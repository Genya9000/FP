package ml.trucking.web;

import ml.trucking.dao.ConnectPool;
import ml.trucking.dao.UserDao;
import ml.trucking.services.UserDaoImpl;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;



@WebServlet("/adduser")
public class AddUserServlet extends HttpServlet {

    private Connection connection;
    UserDao dao = new UserDaoImpl(connection);
    @Override
    public void init() {


        try {
            connection = ConnectPool.getDataSource().getConnection();

        } catch ( SQLException  e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getServletContext().getRequestDispatcher("/jsp/addUser.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("username");
        String phone = req.getParameter("userphone");
        String email = req.getParameter("useremail");
        String password = req.getParameter("userpassword");


        try {


            dao.addUser(name, phone, email, password);

        }  finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        resp.getWriter().print(name);

    }
}