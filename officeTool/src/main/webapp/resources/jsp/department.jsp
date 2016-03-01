<%@page import="com.officeTool.myTask.pojo.User" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    pageContext.setAttribute("ctx", request.getContextPath());

    User user = (User) session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Basic -->
    <meta charset="UTF-8"/>

    <title>Table | Nadhif - Responsive Admin Template</title>

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <!-- Import google fonts -->
    <link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet"
          type="text/css"/>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="${ctx}/resources/assets/ico/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="${ctx}/resources/assets/ico/apple-${ctx}/resources/assetsicon.png"/>
    <link rel="apple-touch-icon" sizes="57x57" href="${ctx}/resources/assets/ico/apple-touch-icon-57x57.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="${ctx}/resources/assets/ico/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="76x76" href="${ctx}/resources/assets/ico/apple-touch-icon-76x76.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="${ctx}/resources/assets/ico/apple-touch-icon-114x114.png"/>
    <link rel="apple-touch-icon" sizes="120x120" href="${ctx}/resources/assets/ico/apple-touch-icon-120x120.png"/>
    <link rel="apple-touch-icon" sizes="144x144" href="${ctx}/resources/assets/ico/apple-touch-icon-144x144.png"/>
    <link rel="apple-touch-icon" sizes="152x152" href="${ctx}/resources/assets/ico/apple-touch-icon-152x152.png"/>

    <!-- start: CSS file-->

    <!-- Vendor CSS-->
    <link href="${ctx}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${ctx}/resources/assets/vendor/skycons/css/skycons.css" rel="stylesheet"/>
    <link href="${ctx}/resources/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>

    <!-- Plugins CSS-->
    <link href="${ctx}/resources/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet"/>
    <link href="${ctx}/resources/assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet"/>
    <link href="${ctx}/resources/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet"/>

    <!-- Theme CSS -->
    <link href="${ctx}/resources/assets/css/jquery.mmenu.css" rel="stylesheet"/>

    <!-- Page CSS -->
    <link href="${ctx}/resources/assets/css/style.css" rel="stylesheet"/>
    <link href="${ctx}/resources/assets/css/add-ons.min.css" rel="stylesheet"/>

    <!-- end: CSS file-->


    <!-- Head Libs -->
    <script src="${ctx}/resources/assets/plugins/modernizr/js/modernizr.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Start: Header -->
<div class="navbar" role="navigation">
    <div class="container-fluid container-nav">
        <!-- Navbar Action -->
        <ul class="nav navbar-nav navbar-actions navbar-left">
            <li class="visible-md visible-lg"><a href="table.html#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a>
            </li>
            <li class="visible-xs visible-sm"><a href="table.html#" id="sidebar-menu"><i class="fa fa-navicon"></i></a>
            </li>
        </ul>
        <!-- Navbar Left -->
        <div class="navbar-left">
            <!-- Search Form -->
            <form class="search navbar-form">
                <div class="input-group input-search">
                    <input type="text" class="form-control" name="q" id="q" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
							</span>
                </div>
            </form>
        </div>
        <!-- Navbar Right -->
        <div class="navbar-right">
            <!-- Notifications -->
            <ul class="notifications hidden-sm hidden-xs">
                <li>
                    <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                        <i class="fa fa-tasks"></i>
                        <span class="badge">10</span>
                    </a>
                    <ul class="dropdown-menu update-menu" role="menu">
                        <li><a href="#"><i class="fa fa-database bk-fg-primary"></i> Database </a></li>
                        <li><a href="#"><i class="fa fa-bar-chart-o bk-fg-primary"></i> Connection </a></li>
                        <li><a href="#"><i class="fa fa-bell bk-fg-primary"></i> Notification </a></li>
                        <li><a href="#"><i class="fa fa-envelope bk-fg-primary"></i> Message </a></li>
                        <li><a href="#"><i class="fa fa-flash bk-fg-primary"></i> Traffic </a></li>
                        <li><a href="#"><i class="fa fa-credit-card bk-fg-primary"></i> Invoices </a></li>
                        <li><a href="#"><i class="fa fa-dollar bk-fg-primary"></i> Finances </a></li>
                        <li><a href="#"><i class="fa fa-thumbs-o-up bk-fg-primary"></i> Orders </a></li>
                        <li><a href="#"><i class="fa fa-folder bk-fg-primary"></i> Directories </a></li>
                        <li><a href="#"><i class="fa fa-users bk-fg-primary"></i> Users </a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                        <i class="fa fa-envelope"></i>
                        <span class="badge">5</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-menu-header">
                            <strong>Messages</strong>
                            <div class="progress progress-xs  progress-striped active">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                    60%
                                </div>
                            </div>
                        </li>
                        <li class="avatar">
                            <a href="page-inbox.html">
                                <img class="avatar" src="${ctx}/resources/assets/img/avatar1.jpg" alt=""/>
                                <div>
                                    <div class="point point-primary point-lg"></div>
                                    New message
                                </div>
                                <span><small>1 minute ago</small></span>
                            </a>
                        </li>
                        <li class="avatar">
                            <a href="page-inbox.html">
                                <img class="avatar" src="${ctx}/resources/assets/img/avatar2.jpg" alt=""/>
                                <div>
                                    <div class="point point-primary point-lg"></div>
                                    New message
                                </div>
                                <span><small>3 minute ago</small></span>
                            </a>
                        </li>
                        <li class="avatar">
                            <a href="page-inbox.html">
                                <img class="avatar" src="${ctx}/resources/assets/img/avatar3.jpg" alt=""/>
                                <div>
                                    <div class="point point-primary point-lg"></div>
                                    New message
                                </div>
                                <span><small>4 minute ago</small></span>
                            </a>
                        </li>
                        <li class="avatar">
                            <a href="page-inbox.html">
                                <img class="avatar" src="${ctx}/resources/assets/img/avatar4.jpg" alt=""/>
                                <div>
                                    <div class="point point-primary point-lg"></div>
                                    New message
                                </div>
                                <span><small>30 minute ago</small></span>
                            </a>
                        </li>
                        <li class="avatar">
                            <a href="page-inbox.html">
                                <img class="avatar" src="${ctx}/resources/assets/img/avatar5.jpg" alt=""/>
                                <div>
                                    <div class="point point-primary point-lg"></div>
                                    New message
                                </div>
                                <span><small>1 hours ago</small></span>
                            </a>
                        </li>
                        <li class="dropdown-menu-footer text-center">
                            <a href="page-inbox.html">View all messages</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                        <i class="fa fa-bell"></i>
                        <span class="badge">3</span>
                    </a>
                    <ul class="dropdown-menu list-group">
                        <li class="dropdown-menu-header">
                            <strong>Notifications</strong>
                            <div class="progress progress-xs  progress-striped active">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                    60%
                                </div>
                            </div>
                        </li>
                        <li class="list-item">
                            <a href="page-inbox.html">
                                <div class="pull-left">
                                    <i class="fa fa-envelope-o bk-fg-primary"></i>
                                </div>
                                <div class="media-body clearfix">
                                    <div>Unread Message</div>
                                    <h6>You have 10 unread message</h6>
                                </div>
                            </a>
                        </li>
                        <li class="list-item">
                            <a href="#">
                                <div class="pull-left">
                                    <i class="fa fa-cogs bk-fg-primary"></i>
                                </div>
                                <div class="media-body clearfix">
                                    <div>New Settings</div>
                                    <h6>There are new settings available</h6>
                                </div>
                            </a>
                        </li>
                        <li class="list-item">
                            <a href="#">
                                <div class="pull-left">
                                    <i class="fa fa-fire bk-fg-primary"></i>
                                </div>
                                <div class="media-body clearfix">
                                    <div>Update</div>
                                    <h6>There are new updates available</h6>
                                </div>
                            </a>
                        </li>
                        <li class="list-item-last">
                            <a href="#">
                                <h6>Unread notifications</h6>
                                <span class="badge">15</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- End Notifications -->
            <!-- Userbox -->
            <div class="userbox">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <div class="profile-info">
                        <span class="name"><%=user.getName() %></span>
                        <span class="role">Developer</span>
                    </div>
                    <i class="fa custom-caret"></i>
                </a>
                <div class="dropdown-menu">
                    <ul class="list-unstyled">
                        <li class="dropdown-menu-header bk-bg-white bk-margin-top-15">
                            <div class="progress progress-xs  progress-striped active">
                                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                    60%
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="page-profile.html"><i class="fa fa-user"></i>个人信息</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench"></i> 设置</a>
                        </li>
                        <li>
                            <a href="page-invoice"><i class="fa fa-calendar"></i>我的提醒</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-file"></i> 文档</a>
                        </li>
                        <li>
                            <a href="page-login.html"><i class="fa fa-power-off"></i> 退出</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- End Userbox -->
        </div>
        <!-- End Navbar Right -->
    </div>
</div>
<!-- End: Header -->

<!-- Start: Content -->
<div class="container-fluid content">
    <div class="row">

        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-collapse">
                <!-- Sidebar Header Logo-->
                <div class="sidebar-header">
                    <img src="${ctx}/resources/assets/img/logo.png" class="img-responsive" alt=""/>
                </div>
                <!-- Sidebar Menu-->
                <div class="sidebar-menu">
                    <nav id="menu" class="nav-main" role="navigation">
                        <ul class="nav nav-sidebar">
                            <div class="panel-body text-center">
                                <div class="bk-avatar">
                                    <img src="${ctx}/resources/assets/img/avatar.jpg" class="img-circle bk-img-60"
                                         alt=""/>
                                </div>
                                <div class="bk-padding-top-10">
                                    <i class="fa fa-circle text-success"></i>
                                    <small><%=user.getName() %>
                                    </small>
                                </div>
                            </div>
                            <div class="divider2"></div>
                            <li class="active">
                                <a href="index.html">
                                    <i class="fa fa-laptop" aria-hidden="true"></i><span>工作台</span>
                                </a>
                            </li>
                            <li>
                                <a href="page-inbox.html">
                                    <span class="pull-right label label-primary">165</span>
                                    <i class="fa fa-envelope" aria-hidden="true"></i><span>站内信</span>
                                </a>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-copy" aria-hidden="true"></i><span>用户管理</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li><a href="${ctx}/resources/jsp/department.jsp"><span class="text">部门管理</span></a>
                                    </li>
                                    <li><a href="page-invoice.html"><span class="text"> 角色管理</span></a></li>
                                    <li><a href="page-profile.html"><span class="text"> 用户信息管理</span></a></li>
                                </ul>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-list-alt" aria-hidden="true"></i><span>Forms</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li><a href="form-elements.html"><span class="text"> Form elements</span></a></li>
                                    <li><a href="form-wizard.html"><span class="text"> Wizard</span></a></li>
                                    <li><a href="form-dropzone.html"><span class="text"> Dropzone Upload</span></a></li>
                                    <li><a href="form-x-editable.html"><span class="text"> X-editable</span></a></li>
                                    <li><a href="form-editors.html"><span class="text"> Editors</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="table.html">
                                    <i class="fa fa-table" aria-hidden="true"></i><span>Tables</span>
                                </a>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-random" aria-hidden="true"></i><span>Visual Chart</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li><a href="chart-flot.html"><span class="text"> Flot Chart</span></a></li>
                                    <li><a href="chart-xchart.html"><span class="text"> xChart</span></a></li>
                                    <li><a href="chart-other.html"><span class="text"> Other</span></a></li>
                                </ul>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-tasks" aria-hidden="true"></i>
                                    <span>UI Elements</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li><a href="ui-progress-bars.html"><span class="text"> Progress bars</span></a>
                                    </li>
                                    <li><a href="ui-nestable-list.html"><span class="text"> Nestable Lists</span></a>
                                    </li>
                                    <li><a href="ui-elements.html"><span class="text"> Elements</span></a></li>
                                    <li><a href="ui-panels.html"><span class="text"> Panels</span></a></li>
                                    <li><a href="ui-buttons.html"><span class="text"> Buttons</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="widgets.html">
                                    <i class="fa fa-life-bouy" aria-hidden="true"></i><span>Widgets</span>
                                </a>
                            </li>
                            <li>
                                <a href="typography.html">
                                    <i class="fa fa-font" aria-hidden="true"></i><span>Typography</span>
                                </a>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-bolt" aria-hidden="true"></i><span>Icons</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li><a href="icons-font-awesome.html"><span class="text"> Font Awesome</span></a>
                                    </li>
                                    <li><a href="icons-weathericons.html"><span class="text"> Weather Icons</span></a>
                                    </li>
                                    <li><a href="icons-glyphicons.html"><span class="text"> Glyphicons</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="gallery.html">
                                    <i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span>
                                </a>
                            </li>
                            <li>
                                <a href="calendar.html">
                                    <i class="fa fa-calendar" aria-hidden="true"></i><span>Calendar</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- End Sidebar Menu-->
            </div>
            <!-- Sidebar Footer-->
            <div class="sidebar-footer">
                <ul class="sidebar-terms">
                    <li><a href="index.html#">Terms</a></li>
                    <li><a href="index.html#">Privacy</a></li>
                    <li><a href="index.html#">Help</a></li>
                    <li><a href="index.html#">About</a></li>
                </ul>
                <div class="copyright text-center">
                    <small>Nadhif <i class="fa fa-coffee"></i> Collect from <a href="http://www.cssmoban.com/"
                                                                               title="网页模板" target="_blank">网页模板</a> -
                        More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></small>
                </div>
            </div>
            <!-- End Sidebar Footer-->
        </div>
        <!-- End Sidebar -->

        <!-- Main Page -->
        <div class="main sidebar-minified">
            <!-- Page Header -->
            <div class="page-header">
                <div class="pull-left">
                    <ol class="breadcrumb visible-sm visible-md visible-lg">
                        <li><a href="index.html"><i class="icon fa fa-home"></i>Home</a></li>
                        <li class="active"><i class="fa fa-table"></i>部门管理</li>
                    </ol>
                </div>
                <div class="pull-right">
                    <h2>Tables</h2>
                </div>
            </div>
            <!-- End Page Header -->
            <div class="row">
                <div class="col-lg-3">
                    <div id="treeview1" class=""></div>
                </div>
                <div class="col-lg-9">
                    <div class="panel">
                        <div class="panel-heading bk-bg-primary">
                            <h6><i class="fa fa-table red"></i><span class="break"></span>Striped</h6>
                            <div class="panel-actions">
                                <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>Employe</th>
                                        <th>Position</th>
                                        <th>Salary</th>
                                        <th>Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Willson</td>
                                        <td>Developer</td>
                                        <td>2563$</td>
                                        <td>
                                            <span class="label label-success">Active</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>James</td>
                                        <td>SEO</td>
                                        <td>5000$</td>
                                        <td>
                                            <span class="label label-danger">Banned</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Steven</td>
                                        <td>Photographer</td>
                                        <td>1269$</td>
                                        <td>
                                            <span class="label label-default">Inactive</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Aselay</td>
                                        <td>Project manger</td>
                                        <td>6253$</td>
                                        <td>
                                            <span class="label label-warning">Pending</span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Main Page -->
        </div>
    </div><!--/container-->


    <!-- Modal Dialog -->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title bk-fg-primary">Modal title</h4>
                </div>
                <div class="modal-body">
                    <p class="bk-fg-danger">Here settings can be configured...</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div><!-- End Modal Dialog -->

    <div class="clearfix"></div>


    <!-- start: JavaScript-->

    <!-- Vendor JS-->
    <script src="${ctx}/resources/assets/vendor/js/jquery.min.js"></script>
    <script src="${ctx}/resources/assets/vendor/js/jquery-2.1.1.min.js"></script>
    <script src="${ctx}/resources/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${ctx}/resources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/resources/assets/plugins/treeView/bootstrap-treeview.min.js"></script>
    <script src="${ctx}/resources/assets/vendor/skycons/js/skycons.js"></script>

    <!-- Plugins JS-->
    <script src="${ctx}/resources/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
    <script src="${ctx}/resources/assets/plugins/moment/js/moment.min.js"></script>
    <script src="${ctx}/resources/assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>

    <!-- Theme JS -->
    <script src="${ctx}/resources/assets/js/jquery.mmenu.min.js"></script>
    <script src="${ctx}/resources/assets/js/core.min.js"></script>

    <!-- Pages JS -->
    <script src="assets/js/pages/table.js"></script>
    <script type="text/javascript">
        $(function () {
            var defaultData = [
                {
                    text: 'Parent 1',
                    href: 'http://www.baidu.com',
                    tags: ['4'],
                    nodes: [
                        {
                            text: 'Child 1',
                            href: 'http://www.baidu.com',
                            tags: ['2'],
                            nodes: [
                                {
                                    text: 'Grandchild 1',
                                    href: 'http://www.baidu.com',
                                    tags: ['0']
                                },
                                {
                                    text: 'Grandchild 2',
                                    href: '#grandchild2',
                                    tags: ['0']
                                }
                            ]
                        },
                        {
                            text: 'Child 2',
                            href: '#child2',
                            tags: ['0']
                        }
                    ]
                },
                {
                    text: 'Parent 2',
                    href: '#parent2',
                    tags: ['0']
                },
                {
                    text: 'Parent 3',
                    href: '#parent3',
                    tags: ['0']
                },
                {
                    text: 'Parent 4',
                    href: '#parent4',
                    tags: ['0']
                },
                {
                    text: 'Parent 5',
                    href: '#parent5',
                    tags: ['0']
                }
            ];

            $('#treeview1').treeview({
                color: "#428bca",
                enableLinks: true,
                data: defaultData
            });
        });
    </script>

    <!-- end: JavaScript-->

</body>

</html>
