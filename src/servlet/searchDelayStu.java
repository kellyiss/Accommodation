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


public class searchDelayStu extends HttpServlet
{
    /**
     * Constructor of the object
     */
    public searchDelayStu()
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
        String date = request.getParameter("input");
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
        Date date_d = null;

        try
        {
            date_d = sdf.parse(date);
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }

        try
        {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
            String sql = "select * from student where matricno=(select matricno from invoices where date > ? or date is null)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setDate(1, new java.sql.Date(date_d.getTime()));
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
                        "<head><title>delay information</title></head>" +
                        "<body>");
        out.println("<h3>students who haven't paid their invoices in time</h3><br><br>");
        out.println("<table border=1>" +
                "<tr>" +
                "<th>matric number</th>" +
                "<th>student name</th>" +
                "<th>address</th>" +
                "<th>birthday</th>" +
                "<th>sex</th>" +
                "<th>student category</th>" +
                "<th>nationality</th>" +
                "<th>smoker</th>" +
                "<th>special need</th>" +
                "<th>additional comments</th>" +
                "<th>current status</th>" +
                "<th>course id</th>" +
                "<th>consultant</th>" +
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

