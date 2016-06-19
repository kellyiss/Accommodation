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


public class Present extends HttpServlet
{
    /**
     * Constructor of the object
     */
    public Present()
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
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String id = request.getParameter("present");
        try
        {
            Class.forName("org.postgresql.Driver");
            //连接数据库
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
            stmt = conn.createStatement();
            switch (id)
            {
                case "hallManagerReport":
                    rs = stmt.executeQuery("select a.staffname,h.phone\n" +
                            "From accomstaff a,hall h\n" +
                            "where a.accomstaffno=h.accomstaffno\n");
                    out.println(
                            "<html>" +
                                    "<head><title>Hall Manager Report</title></head>" +
                                    "<body>");
                    out.println("<h3>Hall Manager Report:</h3><br><br>");
                    out.println("<table border=1>" +
                            "<tr>" +
                            "<th>staff name</th>" +
                            "<th>phone</th>" +
                            "</tr>");
                    //循环遍历输出查询结果
                    while (rs.next())
                    {
                        out.print("<tr><td>");
                        out.print(rs.getString(1));
                        out.print("</td><td>");
                        out.print(rs.getString(2));
                        out.print("</td></tr>");

                    }
                    out.print("</table></body></html>");
                    out.close();
                case "leaseReport":
                    rs = stmt.executeQuery(" select * from lease");
                    out.println(
                            "<html>" +
                                    "<head><title>Lease Report</title></head>" +
                                    "<body>");
                    out.println("<h3>Lease Report:</h3><br><br>");
                    out.println("<table border=1>" +
                            "<tr>" +
                            "<th>lease number</th>" +
                            "<th>duration</th>" +
                            "<th>matric number</th>" +
                            "<th>place number</th>" +
                            "<th>room number</th>" +
                            "<th>address</th>" +
                            "<th>start date</th>" +
                            "<th>leave date</th>" +
                            "<th>student name</th>" +
                            "</tr>");
                    //循环遍历输出查询结果
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
                        out.print("</td></tr>");

                    }
                    out.print("</table></body></html>");
                    out.close();
                case "leaseInSummer":
                    rs = stmt.executeQuery(" select * from lease " +
                            " where duration='summer semester'");
                    out.println(
                            "<html>" +
                                    "<head><title>lease information in summer semester</title></head>" +
                                    "<body>");
                    out.println("<h3>lease information in summer semester :</h3><br><br>");
                    out.println("<table border=1>" +
                            "<tr>" +
                            "<th>lease number</th>" +
                            "<th>duration</th>" +
                            "<th>matric number</th>" +
                            "<th>place number</th>" +
                            "<th>room number</th>" +
                            "<th>address</th>" +
                            "<th>start date</th>" +
                            "<th>leave date</th>" +
                            "<th>student name</th>" +
                            "</tr>");
                    //循环遍历输出查询结果
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
                        out.print("</td></tr>");

                    }
                    out.print("</table></body></html>");
                    out.close();
                case "unqualified":
                    rs = stmt.executeQuery(" select * from flat " +
                            " where flatid in (select flatid from inspection where condition=false)");
                    out.println(
                            "<html>" +
                                    "<head><title>lease information in summer semester</title></head>" +
                                    "<body>");
                    out.println("<h3>lease information in summer semester :</h3><br><br>");
                    out.println("<table border=1>" +
                            "<tr>" +
                            "<th>flat id</th>" +
                            "<th>address</th>" +
                            "<th>number of single room</th>" +
                            "</tr>");
                    //循环遍历输出查询结果
                    while (rs.next())
                    {
                        out.print("<tr><td>");
                        out.print(rs.getString(1));
                        out.print("</td><td>");
                        out.print(rs.getString(2));
                        out.print("</td><td>");
                        out.print(rs.getString(3));
                        out.print("</td></tr>");

                    }
                    out.print("</table></body></html>");
                    out.close();
                case "waiting":
                    rs = stmt.executeQuery("select * from student where currentstatus='waiting' ");
                    out.println(
                            "<html>" +
                                    "<head><title>students who are in waiting line</title></head>" +
                                    "<body>");
                    out.println("<h3>students who are in waiting line</h3><br><br>");
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
                    out.print("</table></body></html>");
                    out.close();
                case "rent":
                    rs = stmt.executeQuery("select min(rent),max(rent),avg(rent) from room where flatid is null;");
                    out.println(
                            "<html>" +
                                    "<head><title>minimum\\maximum\\average rent of halls</title></head>" +
                                    "<body>");
                    out.println("<h3>minimum\\maximum\\average rent of halls :</h3><br><br>");
                    out.println("<table border=1>" +
                            "<tr>" +
                            "<th>flat id</th>" +
                            "<th>address</th>" +
                            "<th>number of single room</th>" +
                            "</tr>");
                    //循环遍历输出查询结果
                    while (rs.next())
                    {
                        out.print("<tr><td>");
                        out.print(rs.getString(1));
                        out.print("</td><td>");
                        out.print(rs.getString(2));
                        out.print("</td><td>");
                        out.print(rs.getString(3));
                        out.print("</td></tr>");

                    }
                    out.print("</table></body></html>");
                    out.close();
                case "total":
                    rs = stmt.executeQuery("select flatid,numofsingle from flat");
                    out.println(
                            "<html>" +
                                    "<head><title>minimum\\maximum\\average rent of halls</title></head>" +
                                    "<body>");
                    out.println("<h3>minimum\\maximum\\average rent of halls :</h3><br><br>");
                    out.println("<table border=1>" +
                            "<tr>" +
                            "<th>flat id</th>" +
                            "<th>number of room</th>" +
                            "</tr>");
                    //循环遍历输出查询结果
                    while (rs.next())
                    {
                        out.print("<tr><td>");
                        out.print(rs.getString(1));
                        out.print("</td><td>");
                        out.print(rs.getString(2));
                        out.print("</td></tr>");

                    }
                    out.print("</table></body></html>");
                    out.close();
                case "age":
                    rs = stmt.executeQuery("select * from accomstaff where current_date - birthday > 365 * 60");
                    out.println(
                            "<html>" +
                                    "<head><title>lease information in summer semester</title></head>" +
                                    "<body>");
                    out.println("<h3>lease information in summer semester :</h3><br><br>");
                    out.println("<table border=1>" +
                            "<tr>" +
                            "<th>accommodation staff</th>" +
                            "<th>staff name</th>" +
                            "<th>address</th>" +
                            "<th>birthdy</th>" +
                            "<th>sex</th>" +
                            "<th>position</th>" +
                            "<th>location</th>" +
                            "</tr>");
                    //循环遍历输出查询结果
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
                        out.print("</td></tr>");

                    }
                    out.print("</table></body></html>");
                    out.close();

            }
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
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