<%--
  Created by IntelliJ IDEA.
  User: 魏萌
  Date: 2016/6/15
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Accommodation Staff</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" type="text/css" href="css/pure-min.css"/>
    <link rel="stylesheet" type="text/css" href="css/side-menu.css"/>

</head>
<body>

<div id="layout">

    <div id="menu">
        <div class="pure-menu">
            <a class="pure-menu-heading" href="#">Accommodation Office</a>

            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="./accommodationStaff.jsp"
                                              class="pure-menu-link">accommodationStaff</a></li>
                <li class="pure-menu-item"><a href="./delete.jsp" class="pure-menu-link">delete</a></li>
                <li class="pure-menu-item"><a href="./index.jsp" class="pure-menu-link">index</a></li>
                <li class="pure-menu-item"><a href="./presentReport.jsp" class="pure-menu-link">presentReport</a></li>
                <li class="pure-menu-item"><a href="./search.jsp" class="pure-menu-link">search</a></li>
            </ul>
        </div>
    </div>

    <div id="main">
        <div class="header">
            <h1>AccommodationStaff</h1>
            <h2>accommodationStaff</h2>
        </div>

        <div class="content">

            <h2 class="content-subhead">AccommdationStaff</h2>

            <form action="servlet/addServlet" autocomplete="on" method="post" class="pure-form pure-form-aligned">
                <fieldset>
                    <div class="pure-control-group">
                        <label for="RESULT_TextField-1">Staff Number:</label>
                        <input type="text" name="staffno" class="text_field" id="RESULT_TextField-1">
                    </div>

                    <div class="pure-control-group">
                        <label for="RESULT_TextField-2">Name:</label>
                        <input type="text" name="name" class="text_field" id="RESULT_TextField-2">
                    </div>

                    <div class="pure-control-group">
                        <label for="RESULT_TextField-3">home address:</label>
                        <input type="text" name="address" class="text_field" id="RESULT_TextField-3">
                    </div>

                    <div class="pure-control-group">
                        <label for="RESULT_TextField-4">birthday:</label>
                        <input type="text" name="birthday" class="text_field" id="RESULT_TextField-4">
                    </div>

                    <div class="pure-control-group">
                        <label for="RESULT_TextField-5">sex:</label>
                        <input type="text" name="sex" class="text_field" id="RESULT_TextField-5">
                    </div>

                    <div class="pure-control-group">
                        <label for="RESULT_TextField-6">position:</label>
                        <input type="text" name="position" class="text_field" id="RESULT_TextField-6">
                    </div>

                    <div class="pure-control-group">
                        <label for="RESULT_TextField-7">location:</label>
                        <input type="text" name="location" class="text_field" id="RESULT_TextField-7">
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
