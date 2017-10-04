<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

    <title></title>
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
    <script src="${pageContext.request.contextPath }/js/jquery-2.1.1.js"></script>
</head>
<body>
    <div id="wrapper">
        <!-- 侧边导航菜单 开始 -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img class="img-circle" src="${pageContext.request.contextPath }/img/profile_small.jpg" alt="image"></span>
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                                <span class="clear">
                                    <span class="block m-t-xs">
                                        <strong class="font-bold">${user.username }</strong>
                                    </span>
                                </span>
                                <span class="text-muted text-xs block">超级管理员 <b class="caret"></b></span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="${pageContext.request.contextPath }/user?method=signout">退出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">YUN+</div>
                    </li>
 					<li class="active">
                        <a href="#">
                            <i class="fa fa-th-large"></i>
                            <span class="nav-tabel">用户管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li class="active"><a href="#">用户管理</a></li>
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
                        <li><span class="m-r-sm text-muted welcome-message">欢迎您，${user.username }</span></li>
                    
                          
                        <li>
                            <a href="${pageContext.request.contextPath }/user?method=signout">
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
                                    <h5>用户 </h5>
                                    <div class="ibox-tools">
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                        <a class="close-link">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content">

                                     <div class="table-responsive">

                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th data-toggle="true">UID</th>
                                                    <th>USERNAME</th>
                                                    <th>PASSWORD</th>
                                                    <th>EMAIL</th>
                                                    <th>STATE</th>
                                                    <th>CODE</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${pageBean.objList }" var="user">
                                                <tr>
                                                    <td>${user.uid }</td>
                                                    <td>${user.username }</td>
                                                    <td>${user.password }</td>
                                                    <td>${user.email }</td>
                                                    <td><c:if test="${user.state==1 }"><span  class="label label-success">已激活</span></c:if><c:if test="${user.state==0 }"><span class="label label-warning">未激活</span></c:if></td>
                                                    <td>${user.code }</td>
                                                </tr>    
                                                </c:forEach>

                                                
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                                <div class="pagination">
									<nav aria-label="Page navigation example">
									  <ul class="pagination">
									  	<c:if test="${pageBean.currentPage==1 }">
										<li class="page-item disabled">
									        <a class="page-link" href="#" aria-label="Previous">
									    </c:if>
										<c:if test="${pageBean.currentPage!=1 }">
										<li class="page-item">
									        <a class="page-link" href="${pageContext.request.contextPath }/user?method=userPage&currentPage=${pageBean.currentPage-1}" aria-label="Previous">
									    </c:if>
									        <span aria-hidden="true">&laquo;</span>
									        <span class="sr-only">Previous</span>
									      </a>
									    </li>
									    <c:forEach begin="1" end="${pageBean.countPage}" var="i">
									    	<c:if test="${pageBean.currentPage==i }">
									    		<li class="page-item active"><a class="page-link" href="javascript:void(0)">${i }</a></li>
									    	</c:if>
									 		<c:if test="${pageBean.currentPage!=i }">
									    		<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath }/user?method=userPage&currentPage=${i}">${i }</a></li>
									    	</c:if>
									    </c:forEach>
									    <c:if test="${pageBean.currentPage==pageBean.countPage }">
										<li class="page-item disabled">
									        <a class="page-link" href="#" aria-label="Next">
									    </c:if>
										<c:if test="${pageBean.currentPage!=pageBean.countPage }">
										<li class="page-item">
									        <a class="page-link" href="${pageContext.request.contextPath }/user?method=userPage&currentPage=${pageBean.currentPage+1}" aria-label="Next">
									    </c:if>
									        <span aria-hidden="true">&raquo;</span>
									        <span class="sr-only">Next</span>
									      </a>
									    </li>
									  </ul>
									</nav>
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