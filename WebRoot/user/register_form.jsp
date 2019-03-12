<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户注册 - 当当网</title>
<link href="${pageContext.request.contextPath }/css/login.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/page_bottom.css"
	rel="stylesheet" type="text/css" />
<style>
	.erro {
	color: red;
		}
	.ok {
	
		}

	.success {
		color: green;
		}

</style>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript">
	 	   
	$(function(){   //  为图片验证码添加单机事件
  		$("#imgVcode").click(function(){
  			
  			$(this).prop("src","${pageContext.request.contextPath }/code?time="+new Date().getTime());
  		})
  	});
 	$(function(){        //  为文本验证码添加单机事件
  		$(".code").click(function(){
  			$("#imgVcode").prop("src","${pageContext.request.contextPath }/code?time="+new Date().getTime());
  		});
  	});
 	$(function(){
		$("input").blur(function(){
			$("#divErrorMssage").html(null);
			//验证邮箱
			if($(this).is("#txtEmail")){
				var email=$(this).val();
				if(email.trim().length==0){
					$("#email").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;电子邮件不能为空");
				}else{
					var b=/\b(^['_A-Za-z0-9-]+(\.['_A-Za-z0-9-]+)*@([A-Za-z0-9-])+(\.[A-Za-z0-9-]+)*((\.[A-Za-z0-9]{2,})|(\.[A-Za-z0-9]{2,}\.[A-Za-z0-9]{2,}))$)\b/.test(email);
					if(!b){
						$("#email").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;电子邮件地址格式错误");
					}else{
						var xhr;
						if(window.ActiveXObject){
							xhr=new ActiveXObject("Microsoft.XMLHTTP");
						}else{
							xhr=new XMLHttpRequest();
						}
						xhr.open("post","${pageContext.request.contextPath}/Userajax");
						xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
						xhr.send("email="+$("#txtEmail").val());
						xhr.onreadystatechange=function(){
							if(xhr.readyState==4 & xhr.status==200){
								var txt=xhr.responseText;
								$("#email").html(txt);
							}
						};
						//$("#email").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;电子邮件地址格式正确</span>");
					}
				}
			}
			//验证昵称
			if($(this).is("#txtNickName")){
				var nickname=$(this).val();
				if(nickname.trim().length==0){
					$("#name").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;昵称不能为空");
				}else{
					if(nickname.length<4||nickname.length>20){
						$("#name").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;昵称的长度不符合要求");
					}else{
						$("#name").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
					}
				}
			}
			//验证密码
			if($(this).is("#txtPassword")){
				var password=$(this).val();
				if(password.trim().length==0){
					$("#password").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;密码不能为空");
				}else{
					if(password.length<6||password.length>20){
						$("#password").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;密码的长度不符合要求");
					}else{
						if($("#txtRepeatPass").val().trim().length!=0){
							if($("#txtPassword").val()==$("#txtRepeatPass").val()){
								$("#password1").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
							}else{
								$("#password1").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;两次输入的密码不同");
							}
						}
						$("#password").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
					}
				}
			}
			//验证确认密码
			if($(this).is("#txtRepeatPass")){
				var repeatPassword=$(this).val();
				var password1=$("#txtPassword").val();
				if(repeatPassword.trim().length==0){
					$("#password1").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;确认密码不能为空");
				}else{
					if(!(repeatPassword==password1)){
						$("#password1").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;两次输入的密码不同");
					}else{
						$("#password1").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
					}
				}
			}
			//验证验证码
			if($(this).is("#txtVerifyCode")){
				var code=$(this).val();
				if(code.trim().length==0){
					$("#number").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;验证码不能为空");
				}else{
					if(code.length!=4){
						$("#number").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;验证码长度不符合要求");
					}else{
						$("#number").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;验证码格式正确</span>");
					}
				}
			}
		});
		$("#f").submit(function(){
			$("input").trigger("blur");
			if($("img.error").length==0){
				return true;
			}else{
				return false;
			}
		});
	});
  /* $(function(){
 	// 获取到用户输入的用户名
		$("#txtEmail").blur(function(){
			
		
	});
	 	$("input:first").click(function(){
			
		});
	});   */
</script>
</head>
<body>
	<%@include file="../common/head1.jsp"%>
	<div class="login_step">
		注册步骤: <span class="red_bold">1.填写信息</span> > 2.验证邮箱 > 3.注册成功
	</div>
	<div class="fill_message">
		<form name="ctl00" method="post"
			action="<s:url action='user_RegisterUser'/>" id="f" enctype="application/x-www-form-urlencoded">
			<h2>以下均为必填项</h2>
			<table class="tab_login">
				<tr>
					<td valign="top" class="w1">请填写您的Email地址：</td>
					<td><input name="user.email" type="text" id="txtEmail"
						class="text_input" onblur="ckUsername()"/>
						<div class="text_left" id="emailValidMsg">
							<p>请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。</p>
							<span id="email" style="color:red"> </span>
						</div></td>
				</tr>
				<tr>
					<td valign="top" class="w1">设置您在当当网的昵称：</td>
					<td><input name="user.username" type="text" id="txtNickName"
						class="text_input" />
						<div class="text_left" id="nickNameValidMsg">
							<p>您的昵称可以由小写英文字母、中文、数字组成，</p>
							<p>长度4－20个字符，一个汉字为两个字符。</p>
							<span id="name" style="color:red"></span>
						</div></td>
				</tr>
				<tr>
					<td valign="top" class="w1">设置密码：</td>
					<td><input name="user.password" type="password"
						id="txtPassword" class="text_input" />
						<div class="text_left" id="passwordValidMsg">
							<p>您的密码可以由大小写英文字母、数字组成，长度6－20位。</p>
							<span id="password" style="color:red"></span>
						</div></td>
				</tr>
				<tr>
					<td valign="top" class="w1">再次输入您设置的密码：</td>
					<td><input name="password1" type="password" id="txtRepeatPass"
						class="text_input" />
						<div class="text_left" id="repeatPassValidMsg">
							<span id="password1" style="color:red"></span>
						</div></td>
				</tr>
				<tr>
					<td valign="top" class="w1">验证码：</td>
					<td><img class="yzm_img" id='imgVcode'
						src="<s:url action='code'/>" /> 
						<input name="Code" type="text"
						id="txtVerifyCode" class="yzm_input" />
						<div class="text_left t1">
							<p class="t1">
								<span id="vcodeValidMsg">请输入图片中的四个字母。</span> <span
									id="number" style="color:red"></span> <a href="#"
									class="code">看不清楚？换个图片</a>
							</p>
						</div></td>
				</tr>
			</table>

			<div class="login_in">

				<input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="注 册" />
			</div>
		</form>
	</div>
	<%@include file="../common/foot1.jsp"%>
</body>
</html>

