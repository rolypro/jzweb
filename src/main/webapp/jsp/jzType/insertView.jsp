<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<head>
    

    <title>家政网</title>
	
	<jsp:include page="../common/Head2.jsp"></jsp:include>
	<!-- 时间类 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/datetimepicker/css/bootstrap-datetimepicker.min.css">
   	<!-- Custom Fonts -->
	<link href="${pageContext.request.contextPath}/static/twts_22/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">家政网</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
               
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <!-- <li><a href="#"><i class="fa fa-user fa-fw"></i> 个人信息</a>
                        </li> -->
                        
                        <!-- <li class="divider"></li> -->
                        <li><a href="index.do?method=logout"><i class="fa fa-sign-out fa-fw"></i> 注销登陆</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
            <div class="chs">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        
                     	<jsp:include page="../common/ViewTree.jsp"></jsp:include>   
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- /#page-wrapper -->
        
        <div id="page-wrapper">
            
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        	家政服务管理
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" action="jzType.do?method=insert" method="post">  
                                    	<div class="row" >                               		
	                                    	<div class="col-lg-6">
		                                        <div class="form-group">
		                                            <label>服务名</label>
		                                            <input class="form-control" name="name">		                                            
		                                        </div>
	                                        </div>
	                                        
	                                        <div class="col-lg-6">
		                                        <div class="form-group">
		                                            <label>服务描述</label>
		                                            <input class="form-control" name="jzInfo">	                                            
		                                        </div>
	                                        </div>
                                        </div>                                       
                                        <div class="row">
	                                        <div class="col-lg-6 ">
		                                        <button type="submit" class="btn btn-primary">提交</button>
		                                        <button type="reset" style="position: relative;left:30px" class="btn btn-primary">重置</button>
	                                    	</div>
                                    	</div>
                                    </form>
                                </div>
                        	</div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    
        

    </div>
    <!-- /#wrapper -->
	
	<%-- <jsp:include page="../common/Js.jsp"></jsp:include>  --%>
	<!-- jQuery -->
    <script src="${pageContext.request.contextPath}/static/twts_22/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/static/twts_22/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/static/twts_22/vendor/metisMenu/metisMenu.min.js"></script>
    
    
	<!-- DataTables JavaScript -->
    <script src="${pageContext.request.contextPath}/static/twts_22/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/twts_22/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/twts_22/vendor/datatables-responsive/dataTables.responsive.js"></script>
	
	<!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/static/twts_22/dist/js/sb-admin-2.js"></script>
	
	<script src="${pageContext.request.contextPath}/static/datetimepicker/js/bootstrap-datetimepicker.js"></script>
	
	

</body>
<script type="text/javascript">
	$("#form_datetime").datetimepicker({
		format: 'yyyy-mm-dd',//显示格式
		//format: 'yyyy-mm-dd hh:ii:ss',//显示格式
		todayHighlight: 1,//今天高亮
		startView:2,
		forceParse: 0,
		showMeridian: 1,
		autoclose: 1//选择后自动关闭
		});

</script>
</html>
