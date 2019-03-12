<%@page contentType="text/html;charset=utf-8"%>

<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>最新上架图书
</h2>
<div class="book_c_04">
	
	<!--最新上架图书开始-->
		<s:iterator value="list">
	<div class="second_d_wai">
		<div class="img">
			<a href="<s:url action='ProductAll'/>?id=<s:property value='id'/>" target='_blank'><img
					src="<s:url value='%{picture}'/>" border=0 /> </a>
		</div>
		<div class="shuming">
			<a href="<s:url action='ProductAll'/>?id=<s:property value='id'/>" target="_blank"><s:property value="name"/></a><a href="<s:url action='ProductAll'/>?id=<s:property value='id'/>" target="_blank"></a>
		</div>
		<div class="price">
			定价：￥<s:property value="pricing"/>
		</div>
		<div class="price">
			当当价：￥<s:property value="sellingPrice"/>
		</div>
		
	</div>
	<div class="book_c_xy_long"></div>
	</s:iterator>
	<!--最新上架图书结束-->

</div>
<div class="clear"></div>

