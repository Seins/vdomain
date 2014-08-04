<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/8/1 0001
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.bootcss.com/twitter-bootstrap/2.2.2/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/jQuery.js"></script>
    <style>
        .textComment
        {
            width:340px;
            overflow:auto;
            word-break:break-all;
        }
        .btn
        {
            border: none;
            background: #34495e;
            color: white;
            font-size: 16.5px;
            text-decoration: none;
            text-shadow: none;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
            -webkit-transition: 0.25s;
            -moz-transition: 0.25s;
            -o-transition: 0.25s;
            transition: 0.25s;
            -webkit-backface-visibility: hidden;
        }
        .titlelabel
        {
            font-weight:bold;
            font-size: 18px;
            color: rgba(0, 0, 0, 0.6);
        }
    </style>
    <title>新增企业介绍</title>
</head>
<body>
<p><label class="titlelabel">新增企业介绍</label></p>
<div style="margin-left:30px;">
    <form id="tForm" action="${pageContext.request.contextPath}/aboutUs/newAboutUsDo.cfg" method="post" >
        <p><label>侧边栏名称</label><input  id="title" name="title" type="text" style="width:250px;"/></p>
        <p>
            <label>版面图片</label>
            <input type="hidden" id="imgUrl" name="imgUrl"  value="">
            <img   style="width:350px;height:200px;"  />
        </p>
        <p>
            <label>简要描述</label>
            <textarea id="desc" name="desc" class="textComment"></textarea>
        </p>
        <p style="margin-left:65px;">
            <button onclick="doSave()" class="btn">提交</button>
            <button onclick="back()" type="button"  class="btn">返回</button>
        </p>
    </form>
</div>
</body>
<script language="JavaScript">
    function doSave()
    {
        var form=$("#tForm");
        if($("#title").val()==""||$("#title").val()==null)
            alert("侧边栏名称不能为空");
        form.submit();
    }
    function back()
    {
        window.location.href="${pageContext.request.contextPath}/aboutUs/aboutUsMgr.cfg";
    }
</script>
</html>