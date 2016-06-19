<%--
  Created by IntelliJ IDEA.
  User: 魏萌
  Date: 2016/6/17
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>


<%
    String action = request.getParameter("action");
    String num = request.getParameter("num");

    String accomstaffno = request.getParameter("accomstaffno");
    String staffname = request.getParameter("staffname");
    String address = request.getParameter("address");
    String birthday = request.getParameter("birthday");
    String sex = request.getParameter("sex");
    String position = request.getParameter("position");
    String location = request.getParameter("location");
%>
<%
    ResultSet rs = null;
    Connection conn = null;//声明一个connection对象，用来连接数据库
    Statement stmt = null;

    Class.forName("org.postgresql.Driver");
//    //连接数据库
    conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
//    //获取表达式
    stmt = conn.createStatement();
//执行SQL
    String delete_sql = "delete from accomstaff where accomstaffno='" + num + "'";
    String sql = "select * from accomstaff";
    String update_sql = "update accomstaff set"
            + " staffname='" + staffname + "'"
            + ",address='" + address + "'"
            + ",birthday='" + birthday + "'"
            + ",sex='" + sex + "'"
            + ",position='" + position + "'"
            + ",location='" + location + "'"
            + " where accomstaffno='" + accomstaffno + "'";


    if ("del".equals(action))
    {
        stmt.executeUpdate(delete_sql);
    }

    if ("update_commit".equals(action))
    {
        stmt.executeUpdate(update_sql);
    }

    rs = stmt.executeQuery(sql);

%>
<html>
<head>
    <title>delete</title>
    <link rel="stylesheet" href="../style/drp.css">

</head>
<body>
<table border="1">
    <tr align="center">
        <th>accommodation number</th>
        <th>staff name</th>
        <th>address</th>
        <th>birthday</th>
        <th>sex</th>
        <th>position</th>
        <th>location</th>
    </tr>

    <%
        if ("update".equals(action))
        {
            out.print("<form action='delete.jsp' method='POST'");
            while (rs.next())
            {
                out.print("<tr>");
                if (num.equals(rs.getString(1)))
                {
                    out.print("<td>");
                    out.print("<input type='text' name='accomstaffno' value='" + rs.getString(1) + "' disable/>");
                    out.print("</td><td>");
                    out.print("<input type='text' name='staffname' value='" + rs.getString(2) + "'/>");
                    out.print("</td><td>");
                    out.print("<input type='text' name='address' value='" + rs.getString(3) + "'/>");
                    out.print("</td><td>");
                    out.print("<input type='text' name='birthday' value='" + rs.getString(4) + "'/>");
                    out.print("</td><td>");
                    out.print("<input type='text' name='sex' value='" + rs.getString(5) + "'/>");
                    out.print("</td><td>");
                    out.print("<input type='text' name='position' value='" + rs.getString(6) + "'/>");
                    out.print("</td><td>");
                    out.print("<input type='text' name='location' value='" + rs.getString(7) + "'/>");
                    out.print("</td><td>");
                    out.print("<input type='submit' value='submit'/>");
                    out.print("</td>");
                }
                else
                {
                    out.print("<td>");
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
                    out.print("</td>");
                }
                out.print("</tr>");
            }
            out.print("<input type='hidden' name='action' value='update_commit'/>");
            out.print("</form>");
        }
        else
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
                out.print("<a href='delete.jsp?num=" + rs.getString(1) + "&action=del' title='delete'>delete</a>");
                out.print("</td><td>");
                out.print("<a href='delete.jsp?num=" + rs.getString(1) + "&action=update' title='update'>update</a>");
                out.print("</td></tr>");
            }
        }
    %>

</table>
</body>
</html>
