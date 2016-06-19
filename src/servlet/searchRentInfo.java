package servlet;

/**
 * Created by 魏萌 on 2016/6/16.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class searchRentInfo extends HttpServlet
{
    /**
     * Constructor of the object
     */
    public searchRentInfo()
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
        String stuid = request.getParameter("input");
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try
        {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
            String sql = "select * from invoices where matricno=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, stuid);
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
                        "<head><title>rent information</title></head>" +
                        "<body>");
        out.println("<h3>the details of the total rent paid of student</h3><br><br>");
        out.println("<table border=1>" +
                "<tr>" +
                "<th>invoices number</th>" +
                "<th>lease number</th>" +
                "<th>semester</th>" +
                "<th>deadline</th>" +
                "<th>student name</th>" +
                "<th>matriculation number</th>" +
                "<th>place number</th>" +
                "<th>room number</th>" +
                "<th>address</th>" +
                "<th>date</th>" +
                "<th>pay method</th>" +
                "<th>first date</th>" +
                "<th>second date</th>" +
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
                out.print("</td><td>");
                out.print(rs.getString(5));
                out.print("</td><td>");
                out.print(rs.getString(6));
                out.print("</td><td>");
                out.print(rs.getString(7));
                out.print("</td><td>");
                out.print(rs.getString(8));
                out.print("</td><td>");
                out.print(rs.getString(9));
                out.print("</td><td>");
                out.print(rs.getString(10));
                out.print("</td><td>");
                out.print(rs.getString(11));
                out.print("</td><td>");
                out.print(rs.getString(12));
                out.print("</td><td>");
                out.print(rs.getString(13));
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
