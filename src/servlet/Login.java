package servlet;

/**
 * Created by 魏萌 on 2016/6/14.
 */

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")

public class Login extends HttpServlet
{
    /**
     * Constructor of the object
     */
    public Login()
    {
        super();
    }

    /**
     * Destruction of the servlet
     */
    public void destroy()
    {
        super.destroy();
    }

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

    }

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        ResultSet rs = null;
        Connection conn = null;//声明一个connection对象，用来连接数据库
        Statement stmt = null;
        try
        {
            Class.forName("org.postgresql.Driver");
            //连接数据库
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
            //获取表达式
            stmt = conn.createStatement();
            //执行SQL
            String sql = "select * from login where user_id='" + name + "' and user_pass = '" + password + "'";

            rs = stmt.executeQuery(sql);
        }
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
        try
        {
            assert rs != null;
            if (rs.next())
            {
                response.sendRedirect("/test/accommodationStaff.jsp");
            }
            else
            {
                response.sendRedirect("/test/login.jsp");
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public void init() throws ServletException
    {
    }
}
