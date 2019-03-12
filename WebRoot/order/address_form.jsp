<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>生成订单 - 当当网</title>
		<link href="../css/login.css" rel="stylesheet" type="text/css" />
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
  
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
  	
      <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
      
      <script type="text/javascript">
     $(function(){
    	  $("#address").change(function(){
    	  		var index=$("#address option:selected").val();
    	  		$.get("${pageContext.request.contextPath}/p/Address_queryByUserId","index="+index,function(result){
    	  			var results = result.split(",");// 返回一个数组
    	  			for(var i=0;i<results.length;i++){
    	  				results[i] = results[i].split(":");
    	  				//创建option
    	  				var $option=$("<option value="i">"+results[i].detailed+"</option>");
    	  				$("#address").append($option);
    	  				if("addName"==results[i][0]){
    	  				$("#receiveName").val()==results[i][1];
    	  				}else if("detailed"==results[i][0]){
    	  				$("#fullAddress").val()==results[i][1];
    	  				}else if("postalCode"==results[i][0]){
    	  				$("#postalCode").val()==results[i][1];
    	  				}else if("tel"==results[i][0]){
    	  				$("#tel").val()==results[i][1];
    	  				}else if("mobile"==results[i][0]){
    	  				$("#mobile").val()==results[i][1];
    	  				}
    	  			}
    	  		},"json")
    	  		
    	  })
  	 }) 
      $(function(){
			$("input:text").blur(function(){
				$(this).next().find("span").empty();
				//验证收件人姓名
				if($(this).is("#receiveName")){
					var receiveName=$(this).val();
					if(receiveName.trim().length==0){
						$("#nameValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;姓名不能为空");
					}else{
						if(receiveName.length>=2&&receiveName.length<=20){
							$("#nameValidMsg").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
						}else{
							$("#nameValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;姓名长度错误，应该在2-20之间");
						}
					}
				}
				//验证收件人详细地址
				if($(this).is("#fullAddress")){
					var fullAddress=$(this).val();
					if(fullAddress.trim().length==0){
						$("#addressValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;地址不能为空");
					}else{
						if(fullAddress.length>=2&&fullAddress.length<=225){
							$("#addressValidMsg").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
						}else{
							$("#addressValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;地址长度错误，应该在2-225之间");
						}
					}
				}
				//验证邮政编码
				if($(this).is("#postalCode")){
					var postalCode=$(this).val();
					if(postalCode.trim().length==0){
						$("#codeValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;邮政编码不能为空");
					}else{
						var b=/[0-9]{1}(\d+){5}/.test(postalCode);
						if(b){
							$("#codeValidMsg").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
						}else{
							$("#codeValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;邮政编码格式错误");
						}
					}
				}
				//验证电话
				if($(this).is("#tel")){
					var phone=$(this).val();
					if(phone.trim().length==0){
						if($("#mobile").val().trim().length==0){
							$("#phoneValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;电话和手机必须填写其中之一");
						}
					}else{
						var b=/((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)/.test(phone);
						if(b){
							$("#phoneValidMsg").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
						}else{
							$("#phoneValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;电话号码格式错误");
						}
					}					
				}
				//验证手机
				if($(this).is("#mobile")){
					var mobile=$(this).val();
					if(mobile.trim().length==0){
						if($("#tel").val().trim().length==0){
							$("#mobileValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;电话和手机必须填写其中之一");
						}
					}else{
						var b=/^((\(\d{2,3}\))|(\d{3}\-))?1\d{10}$/.test(mobile);
						if(b){
							$("#mobileValidMsg").html("<span style='color:#666666'><img src='../images/right.gif'  width='12' height='12' align='top'/>&nbsp;正确</span>");
						}else{
							$("#mobileValidMsg").html("<img class='error' src='../images/wrong.gif'  width='12' height='12' align='top'/>&nbsp;手机格式错误");
						}
					}		
				}
			});
			$("#f").submit(function(){
				$("input:text").trigger("blur");
				var length=$("img.error").length;
				if(length==0){
					return true;
				}else{
					return false;
				}
			});
		});
      
     </script>
	</head>
	<body>
		<%@include file="../common/head1.jsp"%>
		<div class="login_step">
			生成订单骤: 1.确认订单 >
			<span class="red_bold"> 2.填写送货地址</span> > 3.订单成功
		</div>
		<div class="fill_message">
			<p>
				选择地址：
				<select id="address">
					<option value="-1">
						填写新地址
					</option>
				</select>
			</p>
			<form name="ctl00" method="post" action="<s:url value='/Address/Address_addAddress'/>">
				<input type="hidden" name="id" id="addressId" />

				<table class="tab_login">
					<tr>
						<td valign="top" class="w1">
							收件人姓名：
						</td>
						<td>
							<input type="text" class="text_input" name="address.addName"
								id="receiveName" value=""/>
							<div class="text_left" id="nameValidMsg">
								<p>
									请填写有效的收件人姓名
								</p>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							收件人详细地址：
						</td>
						<td>
							<input type="text" name="address.detailed" class="text_input"
								id="fullAddress" value=""/>
							<div class="text_left" id="addressValidMsg">
								<p>
									请填写有效的收件人的详细地址
								</p>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							邮政编码
						</td>
						<td>
							<input type="text" class="text_input" name="address.postalCode"
								id="postalCode" value=""/>
							<div class="text_left" id="codeValidMsg">
								<p>
									请填写有效的收件人的邮政编码
								</p>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							电话
						</td>
						<td>
							<input type="text" class="text_input" name="address.tel"
								id="tel" value=""/>
							<div class="text_left" id="phoneValidMsg">
								<p>
									请填写有效的收件人的电话
								</p>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							手机
						</td>
						<td>
							<input type="text" class="text_input" name="address.mobile"
								id="mobile" value=""/>
							<div class="text_left" id="mobileValidMsg">
								<p>
									请填写有效的收件人的手机
								</p>
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">
						<%-- <s:url action='Order'/> --%>
					<a href="${pageContext.request.contextPath }/main/main.jsp"><input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="取消" /></a>
			
				<input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="下一步" />
				</div>
			</form>
		</div>
		<%@include file="../common/foot1.jsp"%>
	</body>
</html>