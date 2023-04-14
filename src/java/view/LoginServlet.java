/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import connect.SQLServerConnUtils_JTDS;
import controller.DBUtils;
import controller.MyUtils;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TaiKhoan;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/view/loginForm.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        // lấy dữ liệu từ 3 input trong form login
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String rememberMeStr = request.getParameter("rememberMe");
        // nếu tick remember me thì giá trị là Y ngược lại là null
        System.out.println("helooooo"+rememberMeStr);
        boolean remember = "Y".equals(rememberMeStr);
 
        TaiKhoan taikhoan = null;
        boolean hasError = false;
        String errorString = null;
//      Không dần kiểm tra rỗng vì html đã có thuộc tích required

        Connection conn =  SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        try {
            // Tìm user trong DB.
            taikhoan = DBUtils.findUser(conn, userName, password);

            if (taikhoan == null) {
                hasError = true;
                errorString = "Tên đăng nhập hoặc tài khoản không hợp lệ";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            hasError = true;
            errorString = e.getMessage();
        }
        
        
        
        // Trong trường hợp có lỗi,
        // forward (chuyển hướng) tới /WEB-INF/view/login.jsp
        if (hasError) {
            taikhoan = new TaiKhoan();
            taikhoan.setTenTaiKhoan(userName);
            taikhoan.setMatKhau(password);
 
            // Lưu các thông tin vào request attribute trước khi forward.
            request.setAttribute("errorString", errorString);
            request.setAttribute("user", taikhoan);
 
            // Forward (Chuyển tiếp) tới trang /WEB-INF/view/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/view/loginForm.jsp");
 
            dispatcher.forward(request, resp);
        }
        // Trường hợp không có lỗi.
        // Lưu thông tin người dùng vào Session.
        // Và chuyển hướng sang trang userInfo.
        else {
            HttpSession session = request.getSession();
            MyUtils.storeLoginedUser(session, taikhoan);
// 
//            // Nếu người dùng chọn tính năng "Remember me".
//            if (remember) {
//                MyUtils.storeUserCookie(response, user);
//            }
//            // Ngược lại xóa Cookie
//            else {
//                MyUtils.deleteUserCookie(response);
//            }
// 
//            // Redirect (Chuyển hướng) sang trang /listphone.
            resp.sendRedirect(request.getContextPath() + "/listphone");
        }
    }
    
}
