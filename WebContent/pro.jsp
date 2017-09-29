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

    <title>Yun+后台主题UI | 上下布局模板</title>
    <!-- 网站描述 -->
    <meta name="description" content="Yun+是一个完全响应式的后台主题UI框架，基于Boostrap CSS框架，jQuery框架等各种开源前端框架开发的HTML5+CSS3前端主题UI框架，提供各种强大的常用UI组件，您可以基于此框架应用于您的网站开发，如网站后台，会员中心，论坛，CMS等等。">
    <!-- 网站SEO关键词 -->
    <meta name="keywords" content="Yun+UI,云+主题,云加后台主题UI,响应式的后台主题,Boostrap主题框架">
    
    <!-- 引入Bootstrap CSS框架 awesome字体-->
    <link href="${pageContext.request.contextPath }/css/bootstrap/3.3.4/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/plugins/slick/slick-theme.css" rel="stylesheet">

    <!-- CSS动画框架 -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Yun+ UI css主文件 -->
    <link href="css/yuntheme.css" rel="stylesheet">
</head>
<body class="top-navigation">
    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom white-bg">
                <!-- 顶部导航栏　开始 -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                        <a href="#" class="navbar-brand">Yun+</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav">
                            <li>
                                <a aria-expanded="false" role="button" href="layouts.html"> 返回布局</a>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 菜单　选项 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="#">菜单　选项</a></li>
                                    <li><a href="#">菜单　选项</a></li>
                                </ul>
                            </li>
             
                        </ul>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a href="login.jsp">
                                    <i class="fa fa-sign-out"></i> 退出
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div><!-- 顶部导航栏　结束 -->
            <!-- 主内容　开始 -->
 			<div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">

                    <div class="ibox product-detail">
                        <div class="ibox-content">

                            <div class="row">
                                <div class="col-md-5">


                                    <div class="product-images">

                                        <div>
                                            <div class="image-imitation">
                                                [IMAGE 1]
                                            </div>
                                        </div>
                                        <div>
                                            <div class="image-imitation">
                                                [IMAGE 2]
                                            </div>
                                        </div>
                                        <div>
                                            <div class="image-imitation">
                                                [IMAGE 3]
                                            </div>
                                        </div>


                                    </div>

                                </div>
                                <div class="col-md-7">

                                    <h2 class="font-bold m-b-xs">
                                        Desktop publishing software
                                    </h2>
                                    <small>Many desktop publishing packages and web page editors now.</small>
                                    <div class="m-t-md">
                                        <h2 class="product-main-price">$406,602 <small class="text-muted">Exclude Tax</small> </h2>
                                    </div>
                                    <hr>

                                    <h4>Product description</h4>

                                    <div class="small text-muted">
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is

                                        <br/>
                                        <br/>
                                        There are many variations of passages of Lorem Ipsum available, but the majority
                                        have suffered alteration in some form, by injected humour, or randomised words
                                        which don't look even slightly believable.
                                    </div>
                                    <dl class="small m-t-md">
                                        <dt>Description lists</dt>
                                        <dd>A description list is perfect for defining terms.</dd>
                                        <dt>Euismod</dt>
                                        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
                                        <dd>Donec id elit non mi porta gravida at eget metus.</dd>
                                        <dt>Malesuada porta</dt>
                                        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
                                    </dl>
                                    <hr>

                                    <div>
                                        <div class="btn-group">
                                            <button class="btn btn-primary btn-sm"><i class="fa fa-cart-plus"></i> Add to cart</button>
                                            <button class="btn btn-white btn-sm"><i class="fa fa-star"></i> Add to wishlist </button>
                                            <button class="btn btn-white btn-sm"><i class="fa fa-envelope"></i> Contact with author </button>
                                        </div>
                                    </div>



                                </div>
                            </div>

                        </div>
                        <div class="ibox-footer">
                            <span class="pull-right">
                                Full stock - <i class="fa fa-clock-o"></i> 14.04.2016 10:04 pm
                            </span>
                            The generated Lorem Ipsum is therefore always free
                        </div>
                    </div>

                </div>
            </div> 			
            </div>
            <div class="footer">
                <div class="pull-right">
                    100000个访问<strong>总250w</strong>个访问.
                </div>
                <div>
                    <strong>Copyright</strong> yuntheme.com &copy; 2015
                </div>
            </div>

        </div>
    </div>


    <!-- 引入主要jQuery 等js框架 -->
    <script src="${pageContext.request.contextPath }/js/jquery-2.1.1.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap/3.3.4/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${pageContext.request.contextPath }/js/inspinia.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/pace/pace.min.js"></script>


    <!-- Peity -->
    <script src="${pageContext.request.contextPath }/js/plugins/peity/jquery.peity.min.js"></script>
    <!-- Peity demo -->
    <script src="${pageContext.request.contextPath }/js/demo/peity-demo.js"></script>
	<!-- slick carousel-->
	<script src="${pageContext.request.contextPath }/js/plugins/slick/slick.min.js"></script>

<script>
    $(document).ready(function(){


        $('.product-images').slick({
            dots: true
        });

    });

</script>
</body>
</html>