<%--
  Created by IntelliJ IDEA.
  User: 魏萌
  Date: 2016/6/14
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="UTF-8"/>
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
    <title>login</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Login and Registration Form with HTML5 and CSS3"/>

    <link rel="shortcut icon" href="../favicon.ico">

    <link rel="stylesheet" type="text/css" href="css/pure-min.css"/>
    <link rel="stylesheet" type="text/css" href="css/grids-responsive-min.css"/>
    <link rel="stylesheet" type="text/css" href="css/marketing.css"/>
</head>
<body>

<div class="splash-container">
    <div class="splash">
        <h1 class="splash-head">Accommodation Office</h1>
    </div>
</div>

<div class="content-wrapper">
    <div class="content">
        <h2 class="content-head is-center">Login</h2>
        <div class="pure-g">
            <div class="l-box-lrg pure-u-1 pure-u-md-2-5">
                <form action="servlet/Login" autocomplete="on" method="post" class="pure-form pure-form-stacked">
                    <fieldset>

                        <label for="username">Username</label>
                        <input id="username" name="username" required="required" type="text" placeholder="Username">

                        <label for="password">Password</label>
                        <input id="password" name="password" required="required" type="password" placeholder="Password">

                        <input type="submit" value="Login" class="pure-button pure-button-primary"/>
                    </fieldset>
                </form>
            </div>

            <div class="l-box-lrg pure-u-1 pure-u-md-3-5" background="">

            </div>
        </div>

        </div>

    </div>
</div>

</body>
</html>
>