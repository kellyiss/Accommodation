<%--
  Created by IntelliJ IDEA.
  User: 魏萌
  Date: 2016/6/16
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>present info</title>

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
            <h1>present info</h1>
            <h2>present info</h2>
        </div>

        <div class="content">

            <h2 class="content-subhead">present info</h2>

            <form action="servlet/Present" autocomplete="on" method="post" class="pure-form">
                <label for="RESULT_RadioButton-1_0" class="pure-radio">
                    <input type="radio" name="present" value="hallManagerReport" id="RESULT_RadioButton-1_0"/>
                    hall manager report
                </label>

                <label for="RESULT_RadioButton-1_1" class="pure-radio">
                    <input type="radio" name="present" value="leaseReport" id="RESULT_RadioButton-1_1"/>
                    lease report
                </label>

                <label for="RESULT_RadioButton-1_2" class="pure-radio">
                    <input type="radio" name="present" value="leaseInSummer" id="RESULT_RadioButton-1_2"/>
                    lease information in summer semester
                </label>

                <label for="RESULT_RadioButton-1_3" class="pure-radio">
                    <input type="radio" name="present" value="unqualified" id="RESULT_RadioButton-1_3"/>
                    unqualified ﬂat inspections
                </label>

                <label for="RESULT_RadioButton-1_4" class="pure-radio">
                    <input type="radio" name="present" value="waiting" id="RESULT_RadioButton-1_4"/>
                    students who are in waiting line
                </label>

                <label for="RESULT_RadioButton-1_5" class="pure-radio">
                    <input type="radio" name="present" value="rent" id="RESULT_RadioButton-1_5"/>
                    minimum\maximum\average rent of halls
                </label>

                <label for="RESULT_RadioButton-1_6" class="pure-radio">
                    <input type="radio" name="present" value="total" id="RESULT_RadioButton-1_6"/>
                    total place number of halls
                </label>

                <label for="RESULT_RadioButton-1_7" class="pure-radio">
                    <input type="radio" name="present" value="age" id="RESULT_RadioButton-1_7"/>
                    information of accommodation staff who are over 60
                </label>

                <input type="submit" name="Submit" value="Submit" class="pure-button pure-button-primary"/>
            </form>

        </div>
    </div>
</div>

<script src="js/ui.js"></script>

</body>
</html>

