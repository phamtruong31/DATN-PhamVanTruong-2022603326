import { postLogin, postRegister } from "../../api/user";
import { saveUserToken } from "../../util/auth";

export async function action({ request }) {
  const data = await request.formData();
  const mode = data.get("mode");

  if (mode === "login") {
    const loginData = {
      email: data.get("email"),
      password: data.get("password"),
    };
    let error = "";

    // 1. Validate Form trống
    if (loginData.email === "" || loginData.password === "") {
      error = "Vui lòng nhập đầy đủ thông tin!";
      return { error };
    }

    // 2. Gọi hàm postLogin sang Backend
    const response = await postLogin(loginData);

    // 3. Xử lý lỗi (Thêm check status 'error' từ Laravel mới sửa)
    if (response.status === 422 || response.status === 401 || response.status === 403 || response.status === 'error' || response.error) {
      error = response.message || response.error || "Tài khoản hoặc mật khẩu không chính xác.";
      return { error };
    }

    // 4. Xử lý thành công (Hỗ trợ cả response.success cũ và status === 'success' mới)
    const isSuccess = response.success || response.status === 'success';
    
    if (isSuccess) {
      // Đề phòng trường hợp API Wrapper của bạn trả về thẳng res.data hoặc res
      const resData = response.data ? response.data : response; 
      const token = resData.access_token;
      const user = resData.user;

      if (token) {
        saveUserToken(token, user);
      }

      return {
        status: "success", // ModalLogin sẽ dựa vào cái này để chạy reload trang
        success: true,     // Giữ lại để backup
        access_token: token,
        message: resData.message || "Đăng nhập thành công!",
        user: user,
        mode: "login",
      };
    }
  }

  if (mode === "signup") {
    const signUpData = {
      last_name: data.get("last_name"),
      first_name: data.get("first_name"),
      phone: data.get("phone"),
      email: data.get("email"),
      password: data.get("password"),
    };
    let error = "";

    const response = await postRegister(signUpData);

    if (response.status === 422 || response.status === 401 || response.status === 'error' || response.error) {
      error = response.message || response.error;
      return { error };
    }

    const isSuccess = response.success || response.status === 'success';

    if (isSuccess) {
      const resData = response.data ? response.data : response; 
      
      return {
        status: "success",
        success: true,
        message: resData.message || "Đăng ký thành công!",
        mode: "signup",
      };
    }
  }

  // Trường hợp sập server hoặc chưa chạy XAMPP / npm run dev / artisan serve
  return { error: "Có lỗi xảy ra trong quá trình xử lý, vui lòng thử lại!" };
}