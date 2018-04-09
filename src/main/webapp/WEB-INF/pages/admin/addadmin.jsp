<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加管理员</title>
<link rel="stylesheet" type="text/css"
	href="${base }/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${base }/css/addadmin.css" />
<link rel="stylesheet" type="text/css"
	href="${base }/css/bootstrapValidator.min.css">
<script type="text/javascript" src="${base }/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="${base }/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${base }/js/bootstrapValidator.min.js"></script>
</head>
<body>
	<div style="margin-top: 5px; width: 98%; margin: 5px auto 0 auto">
		<%@ include file="/WEB-INF/pages/common/head.jsp"%>
		<div class="nav">
			<ol class="breadcrumb">
				<li><a class="text-success">当前位置&nbsp;<i
						class="fa fa-hand-o-right">&nbsp;</i>&nbsp;添加管理员
				</a></li>
			</ol>
		</div>
	</div>
	<div class="container">
		<form id="form1" role="form" method="post" action="${base }/admin/add">
			<div class="container" style="width: 600px">
				<div class="panel panel-default">

					<div class="panel-body">
						<div class="form-group">
							<label for="name">用户名</label> <input name="name"
								class="form-control" type="text" placeholder="请输入用户名" />

						</div>
						<div class="form-group">
							<label for="password">密 码</label> <input name="password"
								class="form-control" type="password" placeholder="请输入密码" />
						</div>
						<div class="form-group">
							<label for="repassword">确认密码</label> <input name="repassword"
								class="form-control" type="password" placeholder="请再次输入密码" />
						</div>
						<div class="form-group">
							<label for="realname">真实姓名</label> <input name="realname"
								class="form-control" type="text" placeholder="请输入姓名" />
						</div>
						<div class="form-group">
							<label for="phone">联系电话</label> <input name="phone"
								class="form-control" type="text" placeholder="请输入联系电话" />
						</div>
						<button type="submit" class="btn btn-info form-control">添加</button>
					</div>
				</div>
			</div>


		</form>
	</div>

</body>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#form1")
								.bootstrapValidator(
										{
											message : 'This value is not valid',
											feedbackIcons : {
												valid : 'glyphicon glyphicon-ok',
												invalid : 'glyphicon glyphicon-remove',
												validating : 'glyphicon glyphicon-refresh'
											},
											fields : {
												name : {
													message : '用户名无效',
													validators : {
														notEmpty : {
															message : '用户名不能为空'
														},
														stringLength : {
															min : 6,
															max : 30,
															message : '用户名必须在6~30个字符之间'
														},
														regexp : {
															regexp : /^[a-z][a-zA-Z0-9]+$/,
															message : '用户名只能是小写字母开头,不能有中文'
														}

													}
												},

												password : {
													message : '密码无效',
													validators : {
														notEmpty : {
															message : '密码不能为空'
														},
														stringLength : {
															min : 6,
															max : 20,
															message : '密码必须在6~20个字符之间'
														},
														different : {
															field : 'name',
															message : '密码不能和用户名一样'
														}

													}
												},

												repassword : {
													message : '密码无效',
													validators : {
														notEmpty : {
															message : '密码不能为空'
														},

														identical : {
															field : 'password',
															message : '两次密码输入不一致'
														},
														different : {
															field : 'name',
															message : '密码不能和用户名一样'
														}

													}
												},
												realname : {
													message : '真实姓名无效',
													validators : {
														notEmpty : {
															message : '真实姓名不能为空'
														},
														regexp : {
															regexp : /^([\u4e00-\u9fa5]{1,20}|[a-zA-Z\.\s]{1,20})$/,
															message : '名字格式不正确'
														}
													}
												},
												phone : {
													message : '电话无效',
													validators : {
														notEmpty : {
															message : '电话不能为空'
														},
														regexp : {
															regexp : /^[1][3,4,5,7,8,9][0-9]{9}$/,
															message : '电话格式不正确'
														}

													}
												}

											}

										});

					});
</script>
</html>
