<%--
  Created by IntelliJ IDEA.
  User: 魏萌
  Date: 2016/6/16
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@formsite" />
    <meta property="og:title" content="present info" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://fs10.formsite.com/LpGC4b/form4/index.html" />
    <meta property="og:site_name" content="FormSite" />
    <meta property="og:description" content="View this form on Formsite" />
    <meta property="og:image" content="https://www.formsite.com/apple-touch-icon.png" />
    <meta property="fb:admins" content="150429050199"/>
    <title>present info</title>
    <link rel="stylesheet" type="text/css" media="screen" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" media="all" href="/include/form/fonts7.css?1601" />
    <link rel="stylesheet" type="text/css" media="all" href="/include/form/screen7.css?1601" />
    <link rel="stylesheet" type="text/css" media="print" href="/include/form/print7.css?1601" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="stylesheet" type="text/css" media="screen" href="/include/form/responsive7.css?1601" />
    <style type="text/css" media="all">
        /* LOOK AND FEEL */
        body{
            background: #F5F5F5;
            background-size: cover;
            font-family: 'Roboto',sans-serif;
            font-size: 13px;
            background-position: 50% 50%;
        }

        .form_table{
            width: 605px;
            margin-left: auto;
            margin-right: auto;
            border-radius: 4px;
            border: 20px solid #666666;
            background: #FFFFFF;
            background-size: cover;
            color: #333333;
            overflow: hidden;
            box-shadow: none;
            background-position: 50% 50%;
        }

        .form_table a{
            color: #0D47A1;
        }

        .outside a{
            color: #0D47A1;
        }

        .form_table a:visited{
            color: #0D47A1;
        }

        .outside a:visited{
            color: #0D47A1;
        }

        .segment_header{
            width: auto;
            margin: 1px;
            color: #FFFFFF;
            background: url(/images/stock/2015/TexturesAndPatterns/Textures10.jpg);
            background-size: cover;
            background-repeat: repeat;
            background-position: 50% 50%;
            border-radius: 0;
        }

        .segment_header h1{
            border-radius: 0;
            padding: 20px 10px;
            font-family: 'Roboto',sans-serif;
        }

        .q{
            padding: 10px;
            margin-bottom: 1px;
            margin-left: 1px;
            float: left;
            display: block;
        }

        .q .question{
            font-weight: bold;
        }

        .q .left_question_first{
            width: 15em;
        }

        .required .icon{
            background-image: none;
            background-position: left;
            background-repeat: no-repeat;
            font-size: 13px;
            padding-left: 14px;
        }

        .q .text_field{
            background: #FAFAFA;
            border: 1px solid #CCCCCC;
            border-radius: 2px;
            border-width: 1px;
            color: #333333;
            font-family: 'Roboto',sans-serif;
            font-size: 13px;
            margin: 1px 0;
            padding: 10px;
        }

        .q .file_upload{
            background: #FAFAFA;
            border: 1px solid #CCCCCC;
            border-radius: 2px;
            border-width: 1px;
            color: #333333;
            font-family: 'Roboto',sans-serif;
            font-size: 13px;
            margin-top: 1px;
            padding: 10px;
        }

        .q .file_upload_button{
            margin-top: 2px;
        }

        .q .inline_grid td{
            padding: 5px;
            vertical-align: baseline;
        }

        .q .drop_down{
            background: #FAFAFA;
            border: 1px solid #CCCCCC;
            border-radius: 2px;
            border-width: 1px;
            color: #333333;
            font-family: 'Roboto',sans-serif;
            font-size: 13px;
            margin: 1px 0;
            padding: 9px;
        }

        .q .matrix th{
            color: #FFFFFF;
            background: #64B5F6;
            padding: 5px;
            font-weight: bold;
            text-align: center;
            vertical-align: bottom;
        }

        .q .matrix td{
            padding: 5px;
            text-align: center;
            white-space: nowrap;
            height: 26px;
            border-bottom: 1px solid #CCCCCC;
            border-top: 1px solid #CCCCCC;
        }

        .q .matrix td.question{
            border-right: 1px solid #CCCCCC;
            font-weight: normal;
        }

        .q .matrix .multi_scale_sub th{
            font-weight: normal;
            border-top: 1px solid #CCCCCC !important;
            background: #999999;
        }

        .q .matrix .multi_scale_break{
            border-right: 1px solid #CCCCCC;
        }

        .q .matrix_row_dark td{
            color: #333333;
            background: #FAFAFA;
        }

        .q .matrix_row_dark td.question{
            color: #333333;
            background: #FAFAFA;
        }

        .q .matrix_row_light td{
            color: #333333;
            background: #FFFFFF;
        }

        .q .matrix_row_light td.question{
            color: #333333;
            background: #FFFFFF;
        }

        .q .rating_ranking td{
            padding: 5px;
        }

        .q .scroller{
            border: 1px solid #666666;
        }

        .highlight{
            background: #FFF9C4                !important;
        }

        tr.highlight td{
            background: #FFF9C4                !important;
        }

        .outside{
            color: #333333;
        }

        .outside_container{
            width: 605px;
            padding: 1em 0;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            color: #333333;
        }

        .outside_container .submit_button{
            color: #FFFFFF !important;
            background: #FF9900;
            background-size: auto;
            border-style: solid;
            border-width: 1px;
            border-color: #FFFFFF;
            border-radius: 4px;
            text-align: center;
            font-family: 'Roboto',sans-serif;
            font-size: 14px;
            font-weight: bold;
            min-width: 30%;
            padding: 10px 20px;
            text-transform: uppercase;
            box-shadow: 0 1px 6px rgba(0,0,0,0.30);
        }

        .outside_container .submit_button:hover{
            background: #F57C00;
            border-color: #BBBBBB;
            background-size: auto;
        }

        .progressBarWrapper{
            border-radius: 4px;
            background: #FFFFFF;
            background-size: cover;
            border-color: #666666;
        }

        .progressBarBack{
            color: #FFFFFF;
            background-color: #FF9800;
        }

        .progressBarFront{
            color: #333333;
        }

        .ui-widget{
            font-family: 'Roboto',sans-serif;
        }

        .invalid{
            background: #FFEEEE;
        }

        .invalid .invalid_message{
            color: #FF0000;
            background: #FFEEEE;
            border: 1px solid #FF0000;
            border-radius: 2px;
        }

        .form_table.invalid{
            border: 2px solid #FF0000;
        }

        .invalid .matrix .invalid_row{
            background: #FFEEEE;
        }

    </style>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/include/form/form7.js?1601"></script>
</head>
<body>
<form action="servlet/Present" autocomplete="on" method="post">
    <div style="display:none;">
        <input type="hidden" name="locid" value="LpGC4b/form4" />
        <input type="hidden" name="EParam" value="AT1kKIiyxDynDAHDaE22VaeLTfEDMMCu1Uqd7lymq85I983rbVRsMHQb5mD6Va8a" />
        <input type="hidden" name="ElapsedTime" id="ElapsedTime" value="0" />
        <input type="hidden" name="Referrer" id="Referrer" value="" />
        <input type="text" name="subject_line" id="subject_line" autocomplete="off" /><label for="subject_line">subject_line</label>
    </div>

    <!-- BEGIN_ITEMS -->
    <div class="form_table">

        <div class="clear"></div>

        <div id="q44" class="q full_width">
            <a class="item_anchor" name="ItemAnchor0"></a>
            <div class="segment_header" style="width:auto;text-align:Left;"><h1 style="font-size:18px;padding:20px 1em ;">present report</h1></div>
        </div>

        <div class="clear"></div>

        <div id="q20" class="q">
            <a class="item_anchor" name="ItemAnchor1"></a>
            <span class="question top_question">Choose a report</span>

            <table class="inline_grid">
                <tr>
                    <td><input type="radio" name="present" value="hallManagerReport" class="multiple_choice" id="RESULT_RadioButton-1_0"  /><label for="RESULT_RadioButton-1_0" >hall manager report</label></td>
                </tr>
                <tr>
                    <td><input type="radio" name="present" value="leaseReport" class="multiple_choice" id="RESULT_RadioButton-1_1" /><label for="RESULT_RadioButton-1_1" >lease report</label></td>
                </tr>
                <tr>
                    <td><input type="radio" name="present" value="leaseInSummer" class="multiple_choice" id="RESULT_RadioButton-1_2"  /><label for="RESULT_RadioButton-1_2" >lease information in summer semester</label></td>
                </tr>
                <tr>
                    <td><input type="radio" name="present" value="unqualified" class="multiple_choice" id="RESULT_RadioButton-1_3"  /><label for="RESULT_RadioButton-1_3" >unqualified ﬂat inspections</label></td>
                </tr>
                <tr>
                    <td><input type="radio" name="present" value="waiting" class="multiple_choice" id="RESULT_RadioButton-1_4"  /><label for="RESULT_RadioButton-1_4" >students who are in waiting line</label></td>
                </tr>
                <tr>
                    <td><input type="radio" name="present" value="rent" class="multiple_choice" id="RESULT_RadioButton-1_5"  /><label for="RESULT_RadioButton-1_5" >minimum\maximum\average rent of halls</label></td>
                </tr>
                <tr>
                    <td><input type="radio" name="present" value="total" class="multiple_choice" id="RESULT_RadioButton-1_6"  /><label for="RESULT_RadioButton-1_6" >total place number of halls</label></td>
                </tr>
                <tr>
                    <td><input type="radio" name="present" value="age" class="multiple_choice" id="RESULT_RadioButton-1_7"  /><label for="RESULT_RadioButton-1_7" >information of accommodation staff who are over 60</label></td>
                </tr>
                </tr>
            </table>

        </div>
        <div class="clear"></div>

    </div>
    <!-- END_ITEMS -->
    <input type="hidden" name="EParam" value="FzpUCZwnDno=" />
    <div class="outside_container">
        <div class="buttons_reverse"><input type="submit" name="Submit" value="Submit" class="submit_button" id="FSsubmit" /></div></div>
</form>
</body>
</html>

