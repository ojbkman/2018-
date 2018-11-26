<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="layui/css/layui.css">
    <link rel="stylesheet"
	href="https://test.anygame.info:443/source/front1.4/css/web/style.css">
  </head>
  
  <body>
    <div class="login-main">
    <header class="layui-elip" style="width: 85%">注册</header>
    <form class="layui-form">
        <!--输入用户名-->
        <div class="layui-input-inline">
            <div class="layui-inline" style="width: 85%">
                <input type="text" name="uname" id="uname" required  lay-verify="required" placeholder="用户名" autocomplete="off" class="layui-input">
            </div>
            <!--判断用户名是否可用的图标 -->
            <div class="layui-inline">
                <i class="layui-icon" hidden id="ri" style="color: green; font-weight: bold"></i>
                <i class="layui-icon" hidden id="le" style="color: red; font-weight: bold">ဆ</i>
            </div>
        </div><br>
        <!--输入密码-->
        <div class="layui-input-inline">
            <div class="layui-inline" style="width: 85%">
                <input type="password" name="uname" id="pwd" required  lay-verify="required" placeholder="密码" autocomplete="off" class="layui-input">
            </div>
 
        </div>
        <br>
        <div class="layui-input-inline">
             <div class="layui-inline" style="width: 85%">
                 <input type="password" name="repwd" id="repwd" required  lay-verify="required" placeholder="再次输入密码" autocomplete="off" class="layui-input">
             </div>
        </div>
        <br>
        <div class="layui-input-inline login-btn" style="width: 85%">
            <button type="submit" lay-submit lay-filter="sub" class="layui-btn" lay->注册</button>
        </div>
        <br/>
        <p style="width: 85%">
            <a href="pages/login.html" class="fl">已有账号？立即登录</a>
            <a href="javascript:;" class="fr">忘记密码？</a>
        </p>
    </form>
</div>
 
 
<script src="https://test.anygame.info:443/source/front1.4/plugins/layer/layer.js"></script>
<script type="text/javascript">
    layui.use(['form', 'layer','jquery'], function () {
        var form  = layui.form;
        var $  = layui.jquery;
        //为表单添加blur事件
        $('#uname').blur(function () {
            var  uname = $('#uname').val();
            //ajax异步刷新
            $.ajax({
                url:'pages/checkUser.php',
                type:'post',
                dataType:'text',
                data:{uname:uname},
 
                //验证用户名是否可用
                success:function (data) {
                    if(data=='1'){
                        //layer.msg('可以注册')
                        $('#ri').removeAttr('hidden');
                        $('#le').attr('hidden','hidden');
 
                    }else{
                        //layer.msg('用户名已被占用')
                        $('#ri').attr('hidden','hidden');
                        $('#le').removeAttr('hidden');
                    }
                }
            })
        });
        //添加表单监听事件
        form.on('submit(sub)',function () {
            $.ajax({
                url:'pages/regist.php',
                type:'post',
                data:{uname:$('#uname').val(),
                    pwd:$('#pwd').val()},
                dataType:'text',
                //判断注册状态
                success:function (data) {
                    if (data==1){
                        layer.msg('注册成功')
                    }else{
                        layer.msg('注册失败')
                    }
                }
            })
            //防止页面跳转
            return false;
        });
 
    });
</script>
  </body>
</html>
