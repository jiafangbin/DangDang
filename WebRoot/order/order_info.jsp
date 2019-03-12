<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>生成订单 - 当当网</title>
		<link href="${pageContext.request.contextPath }/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="../common/head1.jsp"%>
		<div class="login_step">
			生成订单骤:
			<span class="red_bold">1.确认订单</span> > 2.填写送货地址 > 3.订单成功
		</div>
		<div class="fill_message">

			<table class="tab_login">
				<tr>
					<td valign="top" class="w1" style="text-align: left">
						<b>序号</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>商品名称</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>商品单价</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>商品数量</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>小计</b>
					</td>
				</tr>

				<!-- 订单开始 -->
				<s:iterator value="#session.map" status="sta">
			
					<tr>
						<td valign="top">
							<s:property value="#sta.count"/>
						</td>
						<td valign="top">
							<s:property value="value.product.name"/>
						</td>
						<td valign="top">
							<s:property value="value.product.sellingPrice"/>
						</td>
						<td valign="top">
							<s:property value="value.count"/>
						</td>
						<td valign="top">
							<s:property value="value.product.sellingPrice*value.count"/>
						</td>
					</tr>
					</s:iterator>
				<!-- 订单结束 -->
				
				<tr>
					<td valign="top" class="w1" style="text-align: left" colspan="5">
						<b>总价￥<s:property value="#session.price"/></b>
					</td>
				</tr>
			</table>
			<br />
			<br />
			<br />
			<div class="login_in">
				<a href="${pageContext.request.contextPath }/main/main.jsp"><input id="btnClientRegister" class="button_1" name="submit"
					type="button" value="取消" /></a>
			
				<a href="<s:url value='/order/order_UserLogin'/>"><input id="btnClientRegister" class="button_1" name="submit"
					type="button" value="下一步" /></a>
		
			</div>

		</div>
		<%@include file="../common/foot1.jsp"%>
	</body>
</html>

