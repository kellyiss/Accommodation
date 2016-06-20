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
    // delete
    final int DELETE_ACC = 1;
    final int DELETE_HALL = 2;
    final int DELETE_INS = 3;

    // update
    final int UPDATE_ACC = 11;
    final int UPDATE_HALL = 12;
    final int UPDATE_INS = 13;

    // update commit
    final int UPDATE_ACC_COMMIT = 21;
    final int UPDATE_HALL_COMMIT = 22;
    final int UPDATE_INS_COMMIT = 23;

    // key for tables
    final String KEY_ACC = "num";
    final String KEY_HALL = "hallname";
    final String KEY_INS = "inspectionid";

    int action = Integer.parseInt("".equals(request.getParameter("action"))|request.getParameter("action") == null ? "0" : request.getParameter("action"));

    // delete accommodation staff
    String num = request.getParameter(KEY_ACC);

    // delete hall
    String hallname = request.getParameter(KEY_HALL);

    // delete ins
    String inspectionid = request.getParameter(KEY_INS);

    // update acc date
    String accomstaffno = request.getParameter("accomstaffno");
    String staffname = request.getParameter("staffname");
    String address = request.getParameter("address");
    String birthday = request.getParameter("birthday");
    String sex = request.getParameter("sex");
    String position = request.getParameter("position");
    String location = request.getParameter("location");

    // update hall data
    address = request.getParameter("address");
    String phone = request.getParameter("phone");
    accomstaffno = request.getParameter("accomstaffno");

    // update inspection data
    String flatid = request.getParameter("flatid");
    accomstaffno = request.getParameter("accomstaffno"); //accommstaffno
    String checkdate = request.getParameter("checkdate");
    String condition = request.getParameter("condition");
    String additionalcomments = request.getParameter("additionalcomments");
%>
<%
    ResultSet rs = null;
    ResultSet rs_hall = null;
    ResultSet rs_ins = null;
    Connection conn = null;//声明一个connection对象，用来连接数据库
    Statement stmt = null;

    Class.forName("org.postgresql.Driver");
    //连接数据库
    conn = DriverManager.getConnection("jdbc:postgresql://localhost/UniversityAccommodationOffice", "postgres", "123");
    //获取表达式
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

    String select_hall_sql = "select * from hall";
    String delete_hall_sql = "delete from hall where hallname=" + hallname + "'";
    String update_hall_sql = "update hall set"
            + " address='" + address + "'"
            + ",phone='" + phone + "'"
            + ",accomstaffno='" + accomstaffno + "'"
            + " where hallname='" + hallname + "'";

    String select_ins_sql = "select * from inspection";
    String delete_ins_sql = "delete from inspection where inspectionid='" + inspectionid + "'";
    String update_ins_sql = "update inspection set"
            + " flatid='" + flatid + "'"
            + ",accomstaffno='" + accomstaffno + "'"
            + ",checkdate='" + checkdate + "'"
            + ",condition='" + condition + "'"
            + ",additionalcomments='" + additionalcomments + "'"
            + " where inspectionid='" + inspectionid + "'";

    switch (action)
    {
    case DELETE_ACC:
        stmt.executeUpdate(delete_sql);
        break;

    case DELETE_HALL:
        stmt.executeUpdate(delete_hall_sql);
        break;

    case DELETE_INS:
        stmt.executeUpdate(delete_ins_sql);
        break;

    case UPDATE_ACC_COMMIT:
        stmt.executeUpdate(update_sql);
        break;

    case UPDATE_HALL_COMMIT:
        stmt.executeUpdate(update_hall_sql);
        break;

    case UPDATE_INS_COMMIT:
        stmt.executeUpdate(update_ins_sql);
        break;
    }

//    rs = stmt.executeQuery(sql);
//    rs_hall = stmt.executeQuery(select_hall_sql);
//    rs_ins = stmt.executeQuery(select_ins_sql);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>delete</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" type="text/css" href="css/pure-min.css"/>
    <link rel="stylesheet" type="text/css" href="css/side-menu.css"/>

</head>
<body>

<div id="layout">

    <div id="menu">
        <div class="pure-menu">
            <a class="pure-menu-heading" href="#">Accommodation</a>

            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="./accommodationStaff.jsp"
                                              class="pure-menu-link">accommodation</a></li>
                <li class="pure-menu-item"><a href="./delete.jsp" class="pure-menu-link">delete</a></li>
                <li class="pure-menu-item"><a href="./presentReport.jsp" class="pure-menu-link">presentReport</a></li>
                <li class="pure-menu-item"><a href="./search.jsp" class="pure-menu-link">search</a></li>
            </ul>
        </div>
    </div>

    <div id="main">
        <div class="header">
            <h1>Delete&update</h1>
            <h2>Delete&update</h2>
        </div>

        <div class="content">

            <h2 class="content-subhead">AccomStaff</h2>

            <table class="pure-table">
                <thead>
                <tr>
                    <th>accommodation number</th>
                    <th>staff name</th>
                    <th>address</th>
                    <th>birthday</th>
                    <th>sex</th>
                    <th>position</th>
                    <th>location</th>
                </tr>
                </thead>

                <tbody>
                <%
                    rs = stmt.executeQuery(sql);
                    if (action == UPDATE_ACC)
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
                        out.print("<input type='hidden' name='action' value='" + UPDATE_ACC_COMMIT + "'/>");
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
                            out.print("<a href='delete.jsp?" + KEY_ACC + "=" + rs.getString(1) + "&action=" + DELETE_ACC + "' title='delete'>delete</a>");
                            out.print("</td><td>");
                            out.print("<a href='delete.jsp?" + KEY_ACC + "=" + rs.getString(1) + "&action=" + UPDATE_ACC + "' title='update'>update</a>");
                            out.print("</td></tr>");
                        }
                    }
                %>
                </tbody>

            </table>



            <h2 class="content-subhead">hall</h2>

            <table class="pure-table">
                <thead>
                <tr>
                    <th>hallname</th>
                    <th>address</th>
                    <th>phone</th>
                    <th>accomstaffno</th>
                </tr>
                </thead>

                <tbody>
                <%
                    rs = stmt.executeQuery(select_hall_sql);
                    if (action == UPDATE_HALL)
                    {
                        out.print("<form action='delete.jsp' method='POST'");
                        while (rs.next())
                        {
                            out.print("<tr>");
                            if (hallname.equals(rs.getString(1)))
                            {
                                out.print("<td>");
                                out.print("<input type='text' name='hallname' value='" + rs.getString(1) + "' disable/>");
                                out.print("</td><td>");
                                out.print("<input type='text' name='address' value='" + rs.getString(2) + "'/>");
                                out.print("</td><td>");
                                out.print("<input type='text' name='phone' value='" + rs.getString(3) + "'/>");
                                out.print("</td><td>");
                                out.print("<input type='text' name='accomstaffno' value='" + rs.getString(4) + "'/>");
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
                                out.print("</td>");
                            }
                            out.print("</tr>");
                        }
                        out.print("<input type='hidden' name='action' value='" + UPDATE_HALL_COMMIT + "'/>");
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
                            out.print("<a href='delete.jsp?" + KEY_HALL + "=" + rs.getString(1) + "&action=" + DELETE_HALL + "' title='delete'>delete</a>");
                            out.print("</td><td>");
                            out.print("<a href='delete.jsp?" + KEY_HALL + "=" + rs.getString(1) + "&action=" + UPDATE_HALL + "' title='update'>update</a>");
                            out.print("</td></tr>");
                        }
                    }
                %>
                </tbody>

            </table>



            <h2 class="content-subhead">inspection</h2>

            <table class="pure-table">
                <thead>
                <tr>
                    <th>inspectionid</th>
                    <th>flatid</th>
                    <th>accomstaffno</th>
                    <th>checkdate</th>
                    <th>condition</th>
                    <th>additionalcomments</th>
                </tr>
                </thead>

                <tbody>
                <%
                    rs = stmt.executeQuery(select_ins_sql);
                    if (action == UPDATE_INS)
                    {
                        out.print("<form action='delete.jsp' method='POST'");
                        while (rs.next())
                        {
                            out.print("<tr>");
                            if (inspectionid.equals(rs.getString(1)))
                            {
                                out.print("<td>");
                                out.print("<input type='text' name='inspectionid' value='" + rs.getString(1) + "' disable/>");
                                out.print("</td><td>");
                                out.print("<input type='text' name='flatid' value='" + rs.getString(2) + "'/>");
                                out.print("</td><td>");
                                out.print("<input type='text' name='accomstaffno' value='" + rs.getString(3) + "'/>");
                                out.print("</td><td>");
                                out.print("<input type='text' name='checkdate' value='" + rs.getString(4) + "'/>");
                                out.print("</td><td>");
                                out.print("<input type='text' name='condition' value='" + rs.getString(5) + "'/>");
                                out.print("</td><td>");
                                out.print("<input type='text' name='additionalcomments' value='" + rs.getString(6) + "'/>");
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
                                out.print("</td>");
                            }
                            out.print("</tr>");
                        }
                        out.print("<input type='hidden' name='action' value='" + UPDATE_INS_COMMIT + "'/>");
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
                            out.print("<a href='delete.jsp?" + KEY_INS + "=" + rs.getString(1) + "&action=" + DELETE_INS + "' title='delete'>delete</a>");
                            out.print("</td><td>");
                            out.print("<a href='delete.jsp?" + KEY_INS + "=" + rs.getString(1) + "&action=" + UPDATE_INS + "' title='update'>update</a>");
                            out.print("</td></tr>");
                        }
                    }
                %>
                </tbody>

            </table>
        </div>
    </div>
</div>

<script src="js/ui.js"></script>
</body>
</html>
