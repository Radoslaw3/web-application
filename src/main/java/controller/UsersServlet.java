package controller;

import dao.UserDao;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/users")
public class UsersServlet extends HttpServlet {

    private UserDao userDao;
    public  UsersServlet(){
        this.userDao = new UserDao();
    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<User> users = userDao.findAll();
            req.setAttribute("usersList", users);       //nie wyrenderowane  rzeczy mogly by sie pokazac jakby tego ie bylo.
                                                        //

        RequestDispatcher ra
            = req.getRequestDispatcher("/WEB-INF/users.jsp");  //przekieruj urzytkownika z takiego zasobu a tomcat ma przekierowac
        ra.forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
        }
}
}
