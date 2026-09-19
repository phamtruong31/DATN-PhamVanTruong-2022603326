import React, { useState } from 'react';

export default function ChatWidget() {
  const [isOpen, setIsOpen] = useState(false);
  const [messages, setMessages] = useState([
    { sender: 'bot', text: 'Chào bạn! Mình có thể giúp gì cho bạn về laptop?' }
  ]);
  const [input, setInput] = useState('');
  const [loading, setLoading] = useState(false);

  const toggleChat = () => setIsOpen(!isOpen);

  const sendMessage = async () => {
    if (!input.trim()) return;

    const userMessage = input;
    const newMessages = [...messages, { sender: 'user', text: userMessage }];
    setMessages(newMessages);
    setInput('');
    setLoading(true);

    try {
      // Gọi qua Backend Laravel để bảo mật API Key tuyệt đối
      const response = await fetch('http://127.0.0.1:8000/api/ai-chat', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ message: userMessage })
      });

      const data = await response.json();
      setMessages(prev => [...prev, { sender: 'bot', text: data.reply }]);
    } catch (error) {
      setMessages(prev => [...prev, { sender: 'bot', text: 'Đã có lỗi xảy ra khi kết nối tới máy chủ.' }]);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={{ position: 'fixed', bottom: '20px', right: '20px', zIndex: 9999 }}>
      <button 
        onClick={toggleChat}
        style={{
          background: '#007bff', color: 'white', border: 'none', 
          borderRadius: '50%', width: '60px', height: '60px', 
          fontSize: '24px', cursor: 'pointer', boxShadow: '0 4px 6px rgba(0,0,0,0.2)'
        }}
      >
        💬
      </button>

      {isOpen && (
        <div style={{
          position: 'absolute', bottom: '70px', right: '0', 
          width: '380px', height: '560px', background: 'white', 
          border: '1px solid #ccc', borderRadius: '8px', 
          boxShadow: '0 4px 12px rgba(0,0,0,0.15)', display: 'flex', flexDirection: 'column'
        }}>
          <div style={{ background: '#007bff', color: 'white', padding: '10px', fontWeight: 'bold', borderTopLeftRadius: '8px', borderTopRightRadius: '8px', display: 'flex', justifyContent: 'space-between' }}>
            <span>Trợ lý AI Tư vấn Laptop</span>
            <button onClick={toggleChat} style={{ background: 'none', border: 'none', color: 'white', cursor: 'pointer' }}>✖</button>
          </div>
          
          <div style={{ flex: 1, padding: '10px', overflowY: 'auto', fontSize: '15px', display: 'flex', flexDirection: 'column', gap: '8px' }}>
            {messages.map((msg, index) => (
              <div key={index} style={{ textAlign: msg.sender === 'user' ? 'right' : 'left' }}>
                <span style={{
                  background: msg.sender === 'user' ? '#007bff' : '#e4e6eb',
                  color: msg.sender === 'user' ? 'white' : 'black',
                  padding: '6px 10px', borderRadius: '10px', display: 'inline-block', maxWidth: '85%'
                }}>
                  {msg.text}
                </span>
              </div>
            ))}
            {loading && <div style={{ fontSize: '12px', color: '#666', fontStyle: 'italic' }}>AI đang suy nghĩ...</div>}
          </div>

          <div style={{ display: 'flex', borderTop: '1px solid #ccc' }}>
            <input 
              type="text" 
              value={input}
              onChange={(e) => setInput(e.target.value)}
              onKeyPress={(e) => e.key === 'Enter' && sendMessage()}
              placeholder="Nhập tin nhắn..." 
              style={{ flex: 1, border: 'none', padding: '12px', outline: 'none' }}
            />
            <button 
              onClick={sendMessage}
              style={{ background: '#007bff', color: 'white', border: 'none', padding: '0 15px', cursor: 'pointer' }}
            >
              Gửi
            </button>
          </div>
        </div>
      )}
    </div>
  );
}