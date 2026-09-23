# Hướng dẫn cài đặt và chạy website

## Chuẩn bị môi trường
- XAMPP
- PHP 8.2 trở lên
- Composer
- Node.js và npm

## Cài đặt và chạy website

1. Mở XAMPP và bật MySQL.

2. Truy cập phpMyAdmin, tạo database có tên `TMDT` và import file `TMDT.sql`.

3. Mở Terminal tại thư mục `Laravel-admin`, chạy `composer install`.

4. Tạo file `.env` từ `.env.example` và cấu hình database:
   - DB_DATABASE=TMDT
   - DB_USERNAME=root
   - DB_PASSWORD=

5. Nếu sử dụng Chatbot AI, thêm `GEMINI_API_KEY` vào file `.env`.

6. Chạy Backend:
   `php artisan key:generate`
   `php artisan serve`

   Backend: http://127.0.0.1:8000/

   Tài khoản Admin: admin@gmail.com - 12345678

7. Mở Terminal mới tại thư mục `client/React-client`, chạy:
   `npm install`
   `npm run dev`

   Website: http://localhost:5173/

   Tài khoản khách hàng: user@gmail.com - admin123456

