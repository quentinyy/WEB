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
                                <li><a href="#">项目</a></li>                            	
                                <li><a href="#">联系我们</a></li>
                                <li><a href="#">信箱</li>
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
                            <li><a href="#">主面板示例一</a></li>
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
                    
                          
                        <li>
                            <a href="login.jsp">
                                <i class="fa fa-sign-out"></i> 退出
                            </a>
                        </li>
                    </ul>
                </nav>
            </div><!-- 右侧顶部导航div 结束 -->

            <!-- 右侧内容div .wrapper 开始 -->

            <div class="row border-bottom white-bg dashboard-header">

                        <div class="col-lg-12">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>自定义响应表格 </h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                            <i class="fa fa-wrench"></i>
                                        </a>
                                        <ul class="dropdown-menu dropdown-user">
                                            <li><a href="#">选项 1</a>
                                            </li>
                                            <li><a href="#">选项 2</a>
                                            </li>
                                        </ul>
                                        <a class="close-link">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content">
                                    <div class="row">
                                        <div class="col-sm-9 m-b-xs">
                                            <div data-toggle="buttons" class="btn-group">
                                                <label class="btn btn-sm btn-white"> <input type="radio" id="option1" name="options"> 日 </label>
                                                <label class="btn btn-sm btn-white active"> <input type="radio" id="option2" name="options"> 周 </label>
                                                <label class="btn btn-sm btn-white"> <input type="radio" id="option3" name="options"> 月 </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="input-group"><input type="text" placeholder="搜索" class="input-sm form-control"> <span class="input-group-btn">
                                            <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span></div>
                                        </div>
                                    </div>

                                     <div class="table-responsive">

                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th data-toggle="true">项目</th>
                                                    <th>姓名</th>
                                                    <th>电话</th>
                                                    <th>公司</th>
                                                    <th>完成度</th>
                                                    <th>任务</th>
                                                    <th>日期</th>
                                                    <th>状态</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>张三</td>
                                                    <td>020 1323432</td>
                                                    <td>广州东方不败科技有限公司</td>
                                                    <td><span class="pie">0.52/1.561</span></td>
                                                    <td>20%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>李四</td>
                                                    <td>020 1323432</td>
                                                    <td>深圳东方不败科技有限公司</td>
                                                    <td><span class="pie">6,9</span></td>
                                                    <td>40%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>王五</td>
                                                    <td>020 1323432</td>
                                                    <td>东莞东方不败科技有限公司</td>
                                                    <td><span class="pie">3,1</span></td>
                                                    <td>75%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>孙五</td>
                                                    <td>020 1323432</td>
                                                    <td>XX东方不败科技有限公司</td>
                                                    <td><span class="pie">4,9</span></td>
                                                    <td>18%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>孙五</td>
                                                    <td>020 1323432</td>
                                                    <td>XX东方不败科技有限公司</td>
                                                    <td><span class="pie">6,9</span></td>
                                                    <td>40%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>孙五</td>
                                                    <td>020 1323432</td>
                                                    <td>XX东方不败科技有限公司</td>
                                                    <td><span class="pie">0.52/1.561</span></td>
                                                    <td>20%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>孙五</td>
                                                    <td>020 1323432</td>
                                                    <td>XX东方不败科技有限公司</td>
                                                    <td><span class="pie">4,9</span></td>
                                                    <td>18%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>孙五</td>
                                                    <td>020 1323432</td>
                                                    <td>XX东方不败科技有限公司</td>
                                                    <td><span class="pie">0.52/1.561</span></td>
                                                    <td>20%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>孙五</td>
                                                    <td>020 1323432</td>
                                                    <td>XX东方不败科技有限公司</td>
                                                    <td><span class="pie">6,9</span></td>
                                                    <td>40%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>项目名称-示例项目</td>
                                                    <td>孙五</td>
                                                    <td>020 1323432</td>
                                                    <td>XX东方不败科技有限公司</td>
                                                    <td><span class="pie">3,1</span></td>
                                                    <td>75%</td>
                                                    <td>2015-09-12</td>
                                                    <td><a href="table_foo_table.html#"><i class="fa fa-check text-navy"></i></a></td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
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
</body>
</html>