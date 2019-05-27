package ml.trucking.web;

import ml.trucking.dao.ConnectPool;
import ml.trucking.dao.OrderDao;
import ml.trucking.dao.UserDao;
import ml.trucking.services.OrderDaoImpl;
import ml.trucking.services.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet("/addorder")
public class AddOrderServlet extends HttpServlet {

    private Connection connection;
    OrderDao dao = new OrderDaoImpl(connection);
    @Override
    public void init() {


        try {
            connection = ConnectPool.getDataSource().getConnection();

        } catch ( SQLException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getServletContext().getRequestDispatcher("/jsp/addOrder.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String type = req.getParameter("ordertype");
        Integer weight = Integer.parseInt(req.getParameter("orderweight"));
        Date date = Date.valueOf(req.getParameter("orderdate"));



        try {


        }  finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        resp.getWriter().print("hi");

    }
}
