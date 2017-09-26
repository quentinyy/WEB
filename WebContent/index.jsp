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

    <title>Yun+ 响应式后台主题UI | web2.0前端主题框架</title>
    <!-- 网站描述 -->
    <meta name="description" content="Yun+是一个完全响应式的后台主题UI框架，基于Boostrap CSS框架，jQuery框架等各种开源前端框架开发的HTML5+CSS3前端主题UI框架，提供各种强大的常用UI组件，您可以基于此框架应用于您的网站开发，如网站后台，会员中心，论坛，CMS等等。">
    <!-- 网站SEO关键词 -->
    <meta name="keywords" content="Yun+UI,云+主题,云加后台主题UI,响应式的后台主题,Boostrap主题框架">
    
    <!-- 引入Bootstrap CSS框架 awesome字体-->
    <link href="${pageContext.request.contextPath }/css/bootstrap/3.3.4/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath }/css/plugins/blueimp/css/blueimp-gallery.min.css" rel="stylesheet">
    <!-- CSS动画框架 -->
    <link href="${pageContext.request.contextPath }/css/animate.css" rel="stylesheet">
    <!-- Yun+ UI css主文件 -->
    <link href="${pageContext.request.contextPath }/css/yuntheme.css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <!-- 侧边导航菜单 开始 -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img class="img-circle" src="img/profile_small.jpg" alt="image"></span>
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                                <span class="clear">
                                    <span class="block m-t-xs">
                                        <strong class="font-bold">Yun+ UI</strong>
                                    </span>
                                </span>
                                <span class="text-muted text-xs block">超级管理员 <b class="caret"></b></span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="profile.html">项目</a></li>                            	
                                <li><a href="contacts.html">联系我们</a></li>
                                <li><a href="mailbox.html">信箱</li>
                                <li class="divider"></li>
                                <li><a href="login.jsp">退出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">YUN+</div>
                    </li>
 					<li class="active">
                        <a href="index.html">
                            <i class="fa fa-th-large"></i>
                            <span class="nav-tabel">主面板</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li class="active"><a href="index.html">主面板</a></li>
                            <li><a href="dashboard_1.html">主面板示例一</a></li>
                        </ul>
                    </li>                  
                </ul>
            </div>                
        </nav><!-- 侧边导航菜单 结束 -->

        <!-- 右侧内容 开始 -->
        <div class="gray-bg" id="page-wrapper">
            <!-- 右侧顶部导航div 开始 -->
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary" href="#"><i class="fa fa-bars"></i>
                        </a>
                        <form class="navbar-form-custom" action="search_results.html" role="search">
                            <div class="form-group">
                                <input class="form-control" id="top-search" name="top-search" type="text" placeholder="请输入您要查找的内容……">
                            </div>
                        </form>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li><span class="m-r-sm text-muted welcome-message">欢迎来到 YUN+ 后台UI主题</span></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-warning">1</span>
                            </a>
                            <ul class="dropdown-menu dropdown-messages">
                                
           
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="img/profile.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right">23小时前</small>
                                            <strong>风姐</strong> 爱上 <strong>小马哥啦！</strong>. <br>
                                            <small class="text-muted">2天前 2:30 上午 - 11.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="mailbox.html">
                                            <i class="fa fa-envelope"></i> <strong>查看全部消息</strong>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="index.html#">
                                <i class="fa fa-bell"></i>
                                <span class="label label-primary">1</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">

                                <li>
                                    <a href="grid_options.html">
                                        <div>
                                            <i class="fa fa-upload fa-fw"></i> 服务器重启
                                            <span class="pull-right text-muted small">4 分钟前</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="notifications.html">
                                            <strong>查看全部提醒</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>                        
                        <li>
                            <a href="login.jsp">
                                <i class="fa fa-sign-out"></i> 退出
                            </a>
                        </li>
                        <li>
                            <a class="right-sidebar-toggle">
                                <i class="fa fa-tasks"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div><!-- 右侧顶部导航div 结束 -->

            <!-- 右侧内容div .wrapper 开始 -->

            <div class="row border-bottom white-bg dashboard-header">
                <div class="col-lg-12">
     
                </div>

                <div class="col-lg-4">

                </div>

                <div class="col-lg-4">

                </div>
                <div class="col-lg-4">
    

                </div>

            </div>

        
            <!-- 右侧内容div .wrapper 结束 -->

            <div class="footer">
                <div class="pull-right">
                    100000个访问<strong>总250w</strong>个访问.
                </div>
                <div>
                    <strong>Copyright</strong> yuntheme.com &copy; 2017
                </div>
            </div>
        </div><!-- 右侧内容 结束 -->

        <!-- 右上角隐藏通知，设置页 -->
        <div id="right-sidebar">
            <div class="sidebar-container">
                <ul class="nav nav-tabs navs-3">
                    <li class="active">
                        <a data-toggle="tab" href="dashboard_2.html#tab-1"> 通知 </a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="dashboard_2.html#tab-2"> 任务 </a>
                    </li>
                    <li class="">
                        <a data-toggle="tab" href="dashboard_2.html#tab-3"><i class="fa fa-gear"></i></a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div id="tab-1" class="tab-pane active">
                        <div class="sidebar-title">
                            <h3> <i class="fa fa-comments-o"></i> 最新通知 </h3>
                            <small><i class="fa fa-tim"></i> 您当前有10条未读通知.</small>
                        </div>

                        <div>
                            <div class="sidebar-message">
                                <a href="dashboard_2.html#">
                                    <div class="pull-left text-center">
                                        <img alt="image" class="img-circle message-avatar" src="img/a1.jpg">
                                        <div class="m-t-xs">
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        Yun+项目还要很多页面需要测试。
                                        <br>
                                        <small class="text-muted">今天 4:21 下午</small>
                                    </div>
                                </a>
                            </div>
                           
                         
                        </div>

                    </div>

                    <div id="tab-2" class="tab-pane">

                        <div class="sidebar-title">
                            <h3> <i class="fa fa-cube"></i> 最新任务</h3>
                            <small><i class="fa fa-tim"></i> 您当前有16个任务。 10个已完成。</small>
                        </div>

                        <ul class="sidebar-list">
                           
                            <li>
                                <a href="dashboard_2.html#">
                                    <div class="small pull-right m-t-xs">9个小时前</div>
                                    <h4>新功能开发</h4>
                                    订单系统添加一个一键下单功能。

                                    <div class="small">完成进度: 22%</div>
                                    <div class="progress progress-mini">
                                        <div style="width: 22%;" class="progress-bar progress-bar-warning"></div>
                                    </div>
                                    <div class="small text-muted m-t-xs">任务截止: 4:00 下午 - 12.06.2015</div>
                                </a>
                            </li>
                        </ul>

                    </div>

                    <div id="tab-3" class="tab-pane">

                        <div class="sidebar-title">
                            <h3><i class="fa fa-gears"></i> 设置 </h3>
                        </div>

                        <div class="setings-item">
                    <span>
                        显示通知
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example">
                                    <label class="onoffswitch-label" for="example">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        隐藏聊天窗口
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" checked class="onoffswitch-checkbox" id="example2">
                                    <label class="onoffswitch-label" for="example2">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        清空历史记录
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example3">
                                    <label class="onoffswitch-label" for="example3">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        显示聊天窗口
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example4">
                                    <label class="onoffswitch-label" for="example4">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        显示在线用户
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" checked name="collapsemenu" class="onoffswitch-checkbox" id="example5">
                                    <label class="onoffswitch-label" for="example5">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        全局搜索
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" checked name="collapsemenu" class="onoffswitch-checkbox" id="example6">
                                    <label class="onoffswitch-label" for="example6">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="setings-item">
                    <span>
                        每日动态
                    </span>
                            <div class="switch">
                                <div class="onoffswitch">
                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example7">
                                    <label class="onoffswitch-label" for="example7">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="sidebar-content">
                            <h4>设置</h4>
                            <div class="small">
                                您可以从这里进行一些常规设置，当然这只是一个演示页面。
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- 右上角隐藏通知，设置页 end -->
    </div>

    <!-- 引入主要jQuery 等js框架 -->
    <script src="${pageContext.request.contextPath }/js/jquery-2.1.1.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap/3.3.4/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${pageContext.request.contextPath }/js/inspinia.js"></script>
    <script src="${pageContext.request.contextPath }/js/plugins/pace/pace.min.js"></script>

    <!-- blueimp gallery -->
    <script src="${pageContext.request.contextPath }/js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script>
    <script>
       /* blueimp.Gallery(
            document.getElementById('pay-qrcode').getElementsByTagName('a'),
            {
                container: '#blueimp-gallery',
                carousel: true
            }
        );*/
    </script>
</body>
</html>