<%--
  Created by IntelliJ IDEA.
  User: 魏萌
  Date: 2016/6/14
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <base href="https://fs10.formsite.com/LpGC4b/" />
  <meta http-equiv="cache-control" content="no-cache" />
  <meta http-equiv="expires" content="0" />
  <meta name="twitter:card" content="summary" />
  <meta name="twitter:site" content="@formsite" />
  <meta property="og:title" content="Accommodation Staff" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="https://fs10.formsite.com/LpGC4b/form3/index.html" />
  <meta property="og:site_name" content="FormSite" />
  <meta property="og:description" content="View this form on Formsite" />
  <meta property="og:image" content="https://www.formsite.com/apple-touch-icon.png" />
  <meta property="fb:admins" content="150429050199"/>
  <title>Accommodation Staff</title>
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
<form method="post" id="FSForm" action="https://fs10.formsite.com/res/submit" enctype="application/x-www-form-urlencoded" onsubmit="return Vromansys.Form.processSubmit(this);">


  <!-- BEGIN_ITEMS -->
  <div class="form_table">

    <div class="clear"></div>

    <div id="q44" class="q full_width">
      <a class="item_anchor" name="ItemAnchor0"></a>
      <div class="segment_header" style="width:auto;text-align:Left;"><h1 style="font-size:18px;padding:20px 1em ;">Accommodation Staff</h1></div>
    </div>

    <div class="clear"></div>

    <div id="q2" class="q">
      <a class="item_anchor" name="ItemAnchor1"></a>
      <label class="question top_question" for="RESULT_TextField-1">Staff Number:</label>
      <input type="text" name="RESULT_TextField-1" class="text_field" id="RESULT_TextField-1"  size="62" maxlength="25" value="" />
    </div>

    <div class="clear"></div>

    <div id="q48" class="q">
      <a class="item_anchor" name="ItemAnchor2"></a>
      <label class="question top_question" for="RESULT_TextField-2">Name:</label>
      <input type="text" name="RESULT_TextField-2" class="text_field" id="RESULT_TextField-2"  size="62" maxlength="25" value="" />
    </div>

    <div class="clear"></div>

    <div id="q33" class="q">
      <a class="item_anchor" name="ItemAnchor3"></a>
      <label class="question top_question" for="RESULT_TextField-3">home address:</label>
      <input type="text" name="RESULT_TextField-3" class="text_field" id="RESULT_TextField-3"  size="62" maxlength="62" value="" />
    </div>

    <div class="clear"></div>

    <div id="q4" class="q">
      <a class="item_anchor" name="ItemAnchor4"></a>
      <label class="question top_question" for="RESULT_TextField-4">birthday:</label>
      <input type="text" name="RESULT_TextField-4" class="text_field" id="RESULT_TextField-4"  size="62" maxlength="35" value="" />
    </div>

    <div class="clear"></div>

    <div id="q5" class="q">
      <a class="item_anchor" name="ItemAnchor5"></a>
      <label class="question top_question" for="RESULT_TextField-5">sex:</label>
      <input type="text" name="RESULT_TextField-5" class="text_field" id="RESULT_TextField-5"  size="62" maxlength="35" value="" />
    </div>

    <div class="clear"></div>

    <div id="q6" class="q">
      <a class="item_anchor" name="ItemAnchor6"></a>
      <label class="question top_question" for="RESULT_TextField-6">position:</label>
      <input type="text" name="RESULT_TextField-6" class="text_field" id="RESULT_TextField-6"  size="62" maxlength="62" value="" />
    </div>

    <div class="clear"></div>

    <div id="q7" class="q">
      <a class="item_anchor" name="ItemAnchor7"></a>
      <label class="question top_question" for="RESULT_TextField-7">location:</label>
      <input type="text" name="RESULT_TextField-7" class="text_field" id="RESULT_TextField-7"  size="62" maxlength="62" value="" />
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
