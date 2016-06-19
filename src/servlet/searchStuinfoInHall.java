package servlet;

/**
 * Created by 魏萌 on 2016/6/16.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class searchStuinfoInHall extends HttpServlet
{
    /**
     * Constructor of the object
     */
    public searchStuinfoInHall()
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
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        String hallname = request.getParameter("input");
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try
        {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
            String sql = "select l.stuname,l.matricno,l.roomno,r.placeno from lease l,room r where l.placeno=r.placeno AND r.hallname = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, hallname);
            rs = pstmt.executeQuery();
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        out.println(
                "<html>" +
                        "<head><title>student information of a hall</title></head>" +
                        "<body>");
        out.println("<h3>student information of a hall</h3><br><br>");
        out.println("<table border=1>" +
                "<tr>" +
                "<th>student name</th>" +
                "<th>matriculation number</th>" +
                "<th>room number</th>" +
                "<th>place number</th>" +
                "</tr>");
        //循环遍历输出查询结果
        try
        {
            while (rs.next())
            {
                out.print("<tr><td>");
                out.print(rs.getString(1));
                out.print("</td><td>");
                out.print(rs.getString(2));
                out.print("</td><td>");
                out.print(rs.getString(3));
                out.print("</td><td>");
                out.print(rs.getString(4));
                out.print("</td></tr>");

            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        out.print("</table></body></html>");
        out.close();

    }
}

