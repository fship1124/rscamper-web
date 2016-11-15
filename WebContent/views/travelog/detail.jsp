<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<title>여행기 게시물 상세 페이지</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="rscamper">
<meta name="author" content="rscamper">

<!-- Favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headers/header-default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v3.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/login-signup-modal-window/css/style.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-colors/default.css" id="style_color">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-skins/dark.css">

<!-- 사용자 정의 CSS -->
<link rel="stylesheet" href="detail.css">

</head>

<body class="header-fixed header-fixed-space-default">
	<div class="wrapper">

		<!-- 헤더 include -->
		<%@include file="/resources/include/header.jsp"%>

		<!--=== 사이트맵 ===-->
		<div class="breadcrumbs">
			<div class="container">
				<ul class="pull-left breadcrumb">
					<li><a href="${pageContext.request.contextPath}/views/main.jsp"><i class="fa fa-home"></i></a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/views/default/default.jsp">Default Page</a></li>
				</ul>
			</div>
		</div>
		<!--=== 사이트맵 끝 ===-->

		<!--=== 내용 ===-->
		<div class="container content-md">
		<!--=== Content: detail ===-->
			<form role="form" method="get" >
				<input type="hidden" name="boardNo" value="${param.boardNo}" >
			</form>
				<table class="table" border='1'>
					<thead></thead>
					<tbody></tbody>
				</table>
				<div style='float:right;'>
					<button type='submit' class='btn btn-delete' id='delete' style='vertical-align:bottom;'>
						<span class='glyphicon glyphicon-trash' aria-hidden='true'   ></span>
					<button type='button' class='btn btn-primary btn-small' id='update' data-toggle="modal" data-target=".bs-example-modal-lg" style='vertical-align:bottom;'>
						<span class='glyphicon glyphicon-pencil' aria-hidden='true'   ></span>
					<button type='submit' class='btn btn-list' id='list' style='vertical-align:bottom;'>
						<span class='glyphicon glyphicon-th-list' aria-hidden='true'   ></span>
					</button>
				</div>
			</div>
			
			<!--=== Content: update ===-->
			<div>
			<br>
				<!--============ Modal: update ============-->
				<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-lg">
				    <div class="modal-content">
				      <div class="modal-header">
					                제목 : <input type="text" name="title" id="title" style="width:800px; height:30px; " />
				      </div>
				      
				      <form action="http://localhost:8081/travelog/register" method="post" enctype="multipart/form-data" >
					      <div class="modal-body">
    							<textarea name="smarteditor" id="smarteditor" rows="10" cols="100" style="width:850px; height:412px;"></textarea>
					      </div>
					      
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        <button type="button" id="submit-btn" class="btn btn-primary" >Save</button>
					      </div>
				      </form>
				      
				    </div>
				  </div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->	
				
			<!--=== End Content ===-->
			
			<!-- Comment -->
			<div class="container content-md"
				style="border: 1px solid red; height: 500px">
				<div>
				<label for="comment">Comment:</label>
				
					<div class="input-group margin-bottom-20">
						<span class="input-group-addon"><i class="fa fa-plug"></i></span> 
						<input type="hidden" id="commentBoardNo" value="${param.boardNo}" >
						<input type="text" id="inputComment" placeholder="댓글을 입력하세요." class="form-control" style="width: 1000px;">
						
						<button type='button' class='btn btn-success' id="commentBtn" style='vertical-align:bottom;'>
							<span class='glyphicon glyphicon-ok' aria-hidden='true'   ></span>
						</button>
	<!-- 					<button type="button" id="commentBtn" class="btn btn-success">등록</button> -->
					</div>
				</div>
				<!-- Comment List -->
				<div id="comment-list" style="border: 1px solid red; height: 250px; overflow: auto;">
					
				</div>
			</div>
			
			<!-- Modal comment -->
			<div id="modifyModal" class="modal modal-primary fade" role="dialog">
			  <div class="modal-dialog">
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title"></h4>
			      </div>
			      <div class="modal-body" data-rno>
			        <p><input type="text" id="replytext" class="form-control"></p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
			        <button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
	
			<!-- End Comment -->



		
		
		
		
		
		</div>
		<!--=== 내용 끝 ===-->
		

		<!-- 푸터 include -->
		<%@include file="/resources/include/footer.jsp"%>

	</div>
	
	<!-- 로그인 모달 include -->
	<%@include file="/resources/include/userModal.jsp"%>

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/modernizr.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/login-signup-modal-window/js/main.js"></script>

	<!-- JS Page Level -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/app.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/owl-carousel.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/parallax-slider.js"></script>

	<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/assets/plugins/respond.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/html5shiv.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->

	<!-- 파이어베이스 -->
	<script type="text/javascript" src="https://www.gstatic.com/firebasejs/3.5.1/firebase.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/firebaseInit.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/firebaseAuth.js"></script>
	
	<!-- 메뉴 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
	
	<!-- INIT APP -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/initApp.js"></script>
	
	<!-- 사용자 정의 Java Script 작성이 완료되면 외부파일로 뺄것 -->
	<script type="text/javascript">
		jQuery(document).ready(function() {
			contentCreate();
			commentList();
			
			
		});
		
		function contentCreate() {
			var obj = new Object();
			obj.boardNo = ${param.boardNo};
			
			$.ajax({
				type : "POST",
				url : "http://localhost:8081/travelog/detail",
				dataType : 'json',
				data : obj,
				error : function(err) {
					alert("에러");
				},
				success : function(result) {
					
					var d = new Date(result.regDate);
	 				var mon = d.getMonth() + 1;
					
					var html = "";
					html += "<th style='height:30px; text-align:center;'>";
					html += result.categoryName;
					html += "</th>";
					html += "<th colspan='2' >";
					html += result.title;
					html += "</th>";
					html += "<th>";
					html += d.getFullYear() + "-" + prependZero(mon, 2) + "-" + prependZero(d.getDate(), 2)+ " " + d.toLocaleTimeString();
					html += "</th>";
					
					$("thead").html(html);
					
					html = "";
					html += "<td colspan='4' style='height:300px;'>";
					html += result.content;
					html += "</td>";
					
					$("tbody").html(html);
				}
			});
		}
		
		function prependZero(num, len) {
			while (num.toString().length < len) {
				num = "0" + num;
			}
			return num;
		}
		
		/* 게시글삭제 */
		var formObj = $("form[role='form']");
		$(".btn-delete").on("click", function() {
			formObj.attr("action", "http://localhost:8081/travelog/delete");
			formObj.attr("method", "POST");
			formObj.submit();
			/*
			$.ajax({
				url : 'http://localhost:8081/travelog/delete/' + boardNo,
				method : 'DELETE',
				dataTy : 'JSON',
				success : function(result) {
				}
			});
			*/
		});
		
		/* 게시글수정 */
		$(".btn-update").on("click", function() {
			formObj.attr("action", "http://localhost:8081/travelog/update");
			formObj.attr("method", "POST");
			formObj.submit();
			/* $.ajax({
				url : 'http://localhost:8081/travelog/update',
				method : 'GET',
				dataTy : 'JSON',
				success : function(result) {
				}
			}); */
			
		});
		
		/* 리스트목록으로 이동 */
		$(".btn-list").on("click", function() {
			self.location = "http://localhost:8081/travelog/home";
			/*
			$.ajax({
				url : 'http://localhost:8081/travelog/home',
				method : 'GET',
				dataTy : 'JSON',
				success : function(result) {
				}
			});
			*/
		});
		
		
		var page;
		function commentList() {
			var boardNo = ${param.boardNo};
			page = 1;
			$.ajax({
				url : 'http://localhost:8081/travelog/commentList',
				type : 'GET',
				dataType : 'json',
				data : {
					"boardNo" : boardNo,
					"page" : page
				},
				success : function(result) {
					console.log(result);
					commentFn(result);
				}
			});
		};
		
		
		$("#commentBtn").click(function() {
			var user = sessionStorageService.getObject("user");
			var uid = user.userUid;
			var commentContent = $("#inputComment").val();
			var boardNo = $("#commentBoardNo").val();
			page = 1;
			
			//빈칸으로 댓글 입력시..
			if($("#inputComment").val()==""){
				alert("댓글 내용이 없습니다.");
				$("#inputComment").focus(); return;
			}
			$.ajax({
				url : 'http://localhost:8081/travelog/commentRegister',
				type : 'POST',
				data : {
					"userUid" : uid,
					"commentContent" : commentContent,
					"boardNo" : boardNo,
					"page" : page
				},
				success : function() {
					$("#inputComment").val("");
					commentList();
					/* $("#inputComment").val("");					
					commentFn(result); */
				}
			});
		});
	
		function commentFn(data) {
			var cList = $("#comment-list");
			
			cList.html("");
			for (var i = 0; i < data.page.length; i++) {	
				var c = data.page[i];
				var d = new Date(c.regDate);
				var mon = d.getMonth() + 1;
				var html = "";
				html += "<div><form>";
				html += "<div style='margin:10px; width: 95%; height: 60px;' >";
				html += "	<img src='../assets/img/user.jpg' style='vertical-align: inherit; width:40px; height:40px;'>";
				html += "	<div style='display: inline-block;'>";
				html += "		<input type='hidden' id='commentNo' name='commentNo' value='${c.commentNo}' ></input>";
				html += "		<p style='margin-left:20px;' style='' >";
				html += 		d.getFullYear() + "-" + prependZero(mon, 2) + "-" + prependZero(d.getDate(), 2) + " " + d.toLocaleTimeString();
				html += "		</p>";				
				html += "		<p style='margin-left:20px;'>";
				html += 		c.commentContent;
				html += "		</p>";
				html += "	</div>";
				html += "   <div style='float:right; margin-top: 10px;' >";
				html += "		<button type='submit' class='btn btn-default' id='cmtDelete' style='vertical-align:bottom;'>";
				html += "			<span class='glyphicon glyphicon-trash' aria-hidden='true'   ></span>";
				html += "		<button type='submit' class='btn btn-default' id='cmtModify' style='vertical-align:bottom;'>";
				html += "			<span class='glyphicon glyphicon-pencil' aria-hidden='true'   ></span>";
				html += "		</button>"
				html += "   </div>";
				html += "	<hr style='margin:0px; '>";
				html += "</div>";
				html += "</div>"	
				cList.append(html);
			}
		};
		
		$("#cmtDelete").click(function() {
			var commentNo = $("#commentNo").val();
			console.log(commentNo);
			$.ajax({
				url : 'http://localhost:8081/travelog/delete/' + boardNo,
				type : 'GET',
				dataTy : 'JSON',
				success : function(result) {
				}
			});
		});
		
		$('.bs-example-modal-lg').on('shown.bs.modal', function () {
			  $('#myInput').focus();
		})
	
	
	</script>
	
</body>
</html>
