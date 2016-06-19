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

public class searchAdvisor extends HttpServlet
{
    /**
     * Constructor of the object
     */
    public searchAdvisor()
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
        String stu_id = request.getParameter("input");
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
            String sql = "select academistaffname,internalphone from academistaff where academistaffid=(select consultant from student where matricno = ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, stu_id);
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
                        "<head><title>advisor information</title></head>" +
                        "<body>");
        out.println("<h3>advisor information</h3><br><br>");
        out.println("<table border=1>" +
                "<tr>" +
                "<th>academic staff name</th>" +
                "<th>internal phone</th>" +
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

    public void init() throws ServletException
    {

    }
}

