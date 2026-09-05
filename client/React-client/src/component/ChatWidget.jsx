import React, { useState } from 'react';

export default function ChatWidget() {
  const [isOpen, setIsOpen] = useState(false);
  const [messages, setMessages] = useState([
    { sender: 'bot', text: 'Chào bạn! Mình có thể giúp gì cho bạn về laptop?' }
  ]);
  const [input, setInput] = useState('');

  const toggleChat = () => setIsOpen(!isOpen);

  const sendMessage = async () => {
    if (!input.trim()) return;

    const newMessages = [...messages, { sender: 'user', text: input }];
    setMessages(newMessages);
    setInput('');

    setTimeout(() => {
      setMessages(prev => [...prev, { sender: 'bot', text: 'Cảm ơn câu hỏi của bạn! Cửa hàng hiện có rất nhiều mẫu laptop sinh viên giá tốt.' }]);
    }, 1000);
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
          width: '320px', height: '400px', background: 'white', 
          border: '1px solid #ccc', borderRadius: '8px', 
          boxShadow: '0 4px 12px rgba(0,0,0,0.15)', display: 'flex', flexDirection: 'column'
        }}>
          <div style={{ background: '#007bff', color: 'white', padding: '10px', fontWeight: 'bold', borderTopLeftRadius: '8px', borderTopRightRadius: '8px' }}>
            Trợ lý AI Tư vấn Laptop
          </div>
          
          <div style={{ flex: 1, padding: '10px', overflowY: 'auto', fontSize: '14px' }}>
            {messages.map((msg, index) => (
              <div key={index} style={{ textAlign: msg.sender === 'user' ? 'right' : 'left', margin: '5px 0' }}>
                <span style={{
                  background: msg.sender === 'user' ? '#007bff' : '#e4e6eb',
                  color: msg.sender === 'user' ? 'white' : 'black',
                  padding: '6px 10px', borderRadius: '10px', display: 'inline-block', maxWidth: '80%'
                }}>
                  {msg.text}
                </span>
              </div>
            ))}
          </div>

          <div style={{ display: 'flex', borderTop: '1px solid #ccc' }}>
            <input 
              type="text" 
              value={input}
              onChange={(e) => setInput(e.target.value)}
              onKeyPress={(e) => e.key === 'Enter' && sendMessage()}
              placeholder="Nhập tin nhắn..." 
              style={{ flex: 1, border: 'none', padding: '10px', outline: 'none' }}
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