<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<head>
    

    <title>家政网</title>
	
	<jsp:include page="../common/Head2.jsp"></jsp:include>
	<!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/static/twts_22/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="${pageContext.request.contextPath}/static/twts_22/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
	
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
                        	已审核员工
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th >ID</th>
                                        <th>UID</th>
                                        <th >姓名</th>
                                        <th >身份证</th>
                                        <th >电话</th>
                                        <th>工作城市</th>
                                        <th>状态</th>
                                        <th >编辑</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
	                                <c:forEach var="s" items="${ss }" varStatus="status">
										<tr id="${status.count }">
											<td>${s.id }</td>
											<td>${s.uId }</td>
											<td >${s.name }</td>
											<td >${s.idCard }</td>
											<td >${s.phone }</td>
											<td >${s.serviceCity }</td>
											<td >${s.state }</td>											
											<td >
												<c:if test="${s.state == 0 }">
													<input class="btn btn-primary btn-xs" name="state" id="1" type="button" value="启用">
												</c:if>
												<c:if test="${s.state == 1 }">
													<input class="btn btn-primary btn-xs" name="state" id="0" type="button" value="停用">
												</c:if>
												<input class="btn btn-primary btn-xs" name="check" id="${s.id }" type="button" value="查看">
												<input class="btn btn-primary  btn-xs" name="del" id="${s.id }" type="button" value="删除">
											</td>
										</tr>
									</c:forEach> 
                                </tbody>
                            </table>
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
	<script type="text/javascript">
		$(document).ready(function() {
	        $('#dataTables-example').DataTable({
	            responsive: true
	        });
	    });
		
		$(function(){
			
			$("input[name='state']").click(function(){
				state = this.id;
				
				tr = $(this).parents('tr');				
				id = tr.children().eq(0).text();
				
				window.location.href="servicePeople.do?method=updateState&&id="+id+"&&state="+state; 
			});
			
			//show.bs.modal显示前触发
			$("input[name='check']").click(function(){
				id = this.id;
				window.location.href="servicePeople.do?method=findById&&id="+id; 
			});
			
			$("input[name='del']").click(function(){
				id = this.id;
				window.location.href="servicePeople.do?method=delete&&id="+id; 
			});
			
		})
	
	</script>
	

</body>

</html>
