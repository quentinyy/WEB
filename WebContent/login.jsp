<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta charset="utf-8">
    <!-- 初始网页宽度为设置屏幕宽度，缩放级别为1.0，禁止用户缩放-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

    <!-- 设置360等双内核的浏览器渲染模式 -->
    <meta name="renderer" content="webkit">
    <!-- 设置IE支持的最高模式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <!-- 禁止移动浏览器转码 -->
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <!-- 网站标志 -->
    <!-- <link rel="icon" type="image/png" href="favicon.png"> -->

    <title>Yun+后台主题UI | 登录页面</title>
    <!-- 网站描述 -->
    <meta name="description" content="Yun+是一个完全响应式的后台主题UI框架，基于Boostrap CSS框架，jQuery框架等各种开源前端框架开发的HTML5+CSS3前端主题UI框架，提供各种强大的常用UI组件，您可以基于此框架应用于您的网站开发，如网站后台，会员中心，论坛，CMS等等。">
    <!-- 网站SEO关键词 -->
    <meta name="keywords" content="Yun+UI,云+主题,云加后台主题UI,响应式的后台主题,Boostrap主题框架">
    
    <!-- 引入Bootstrap CSS框架 awesome字体-->
    <link href="${pageContext.request.contextPath }/css/bootstrap/3.3.4/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- CSS动画框架 -->
    <link href="${pageContext.request.contextPath }/css/animate.css" rel="stylesheet">
    <!-- Yun+ UI css主文件 -->
    <link href="${pageContext.request.contextPath }/css/yuntheme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/validate.css" rel="stylesheet">

</head>
<body class="gray-bg">
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name">Yun+</h1>
            </div>
            <h3>欢迎使用Yun+ 主题UI</h3>
            <form id="form" class="m-t" role="form" action="${pageContext.request.contextPath }/user?method=login" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="用户名" name="username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码" name="password">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登录</button>

                <a href="login.html#"><small>忘记密码?</small></a>
                <p class="text-muted text-center"><small>还没有帐号?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="${pageContext.request.contextPath }/register.jsp">注册新会员</a>
            </form>
            <p class="m-t"> <small>Yun+ 主题前端框架基于 Bootstrap 3 &copy; 2015</small> </p>
        </div>
    </div>

    <!-- 引入主要jQuery 等js框架 -->
    <script src="${pageContext.request.contextPath }/js/jquery-2.1.1.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap/3.3.4/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/validate/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function(){

            $('#form').validate({
            	rules:{
            		username:{
            			required:true
            		},
            		password:{
            			required:true
            		}
            	},
            	messages:{
            		username:{
            			required:"用户名不能为空"
            		},
            		password:{
            			required:"密码不能为空"
            		}
            	}
            });
        });
    </script>

</body>
</html>