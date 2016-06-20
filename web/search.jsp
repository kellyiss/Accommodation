<%--
  Created by IntelliJ IDEA.
  User: 魏萌
  Date: 2016/6/16
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>search</title>

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
            <h1>search</h1>
            <h2>search</h2>
        </div>

        <div class="content">

            <h2 class="content-subhead">display the details of the total rent paid of student</h2>
            <form action="servlet/searchRentInfo" autocomplete="on" method="post" class="pure-form pure-form-aligned">
                <fieldset>
                    <div class="pure-control-group">
                        <label for="RESULT_TextField-1">enter the student matriculation number:</label>
                        <input type="text" name="input" class="text_field" id="RESULT_TextField-1">
                    </div>

                    <div class="pure-controls">
                        <input type="submit" name="Submit" value="Submit" class="pure-button pure-button-primary"/>
                    </div>
                </fieldset>
            </form>

            <h2 class="content-subhead">display students who haven't paid their invoices in time</h2>
            <form action="servlet/searchDelayStu" autocomplete="on" method="post" class="pure-form pure-form-aligned">
                <fieldset>
                    <div class="pure-control-group">
                        <label for="RESULT_TextField-2">enter the date:</label>
                        <input type="text" name="input" class="text_field" id="RESULT_TextField-2">
                    </div>

                    <div class="pure-controls">
                        <input type="submit" name="Submit" value="Submit" class="pure-button pure-button-primary"/>
                    </div>
                </fieldset>
            </form>

            <h2 class="content-subhead">display the names and matriculation numbers of students of a hall</h2>
            <form action="servlet/searchStuinfoInHall" autocomplete="on" method="post" class="pure-form pure-form-aligned">
                <fieldset>
                    <div class="pure-control-group">
                        <label for="RESULT_TextField-3">enter the hall name:</label>
                        <input type="text" name="input" class="text_field" id="RESULT_TextField-3">
                    </div>

                    <div class="pure-controls">
                        <input type="submit" name="Submit" value="Submit" class="pure-button pure-button-primary"/>
                    </div>
                </fieldset>
            </form>

            <h2 class="content-subhead">display the name and internal telephone number of the Advisor of Studies for a student</h2>
            <form action="servlet/searchAdvisor" autocomplete="on" method="post" class="pure-form pure-form-aligned">
                <fieldset>
                    <div class="pure-control-group">
                        <label for="RESULT_TextField-4">enter the matriculation number:</label>
                        <input type="text" name="input" class="text_field" id="RESULT_TextField-4">
                    </div>

                    <div class="pure-controls">
                        <input type="submit" name="Submit" value="Submit" class="pure-button pure-button-primary"/>
                    </div>
                </fieldset>
            </form>

        </div>
    </div>
</div>

<script src="js/ui.js"></script>
</body>
</html>
