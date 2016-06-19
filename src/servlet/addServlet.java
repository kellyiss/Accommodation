package servlet;

/**
 * Created by 魏萌 on 2016/6/15.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addServlet extends HttpServlet
{
    /**
     * Constructor of the object
     */
    public addServlet()
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
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        System.out.print("come to servlet");
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("staffno");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String sex = request.getParameter("sex");
        String position = request.getParameter("position");
        String location = request.getParameter("location");
        Connection conn = null; //声明一个Connection对象，用来连接数据库
        PreparedStatement pstmt = null; //声明PreparedStatement对象，用来向数据库插入数据条数据

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
        Date date = null;
        try
        {
            date = sdf.parse(birthday);
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }

        try
        {
            Class.forName("org.postgresql.Driver");
            //连接数据库
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
            //插入数据的SQL语句
            String sql = "INSERT INTO accomstaff VALUES(?,?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            //设置插入数据的顺序
            pstmt.setString(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, address);
            pstmt.setDate(4, new java.sql.Date(date.getTime()));
            pstmt.setString(5, sex);
            pstmt.setString(6, position);
            pstmt.setString(7, location);
            int result = pstmt.executeUpdate();
            //判断执行结果
            if (result == 1)
            {
                out.print("<script>alert('插入成功！');</script>");
            }
            else
            {
                out.print("<script>alert('插入数据失败！请重新插入！')");
            }
        }
        catch (ClassNotFoundException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        out.flush();
        out.close();
    }

    /**
     * Initialization of the servlet. <br>
     *
     * @throws ServletException if an error occurs
     */
    public void init() throws ServletException
    {
        // Put your code here
    }

}
