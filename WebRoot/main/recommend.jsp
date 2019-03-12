<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a></span>编辑推荐
</h2> 
<div id=__bianjituijian/danpin>
	<div class=second_c_02>
	<s:iterator value="list">
		
		<div class=second_c_02_b1>
			<div class=second_c_02_b1_1>
				<a href='<s:url action='ProductAll'/>?id=<s:property value='id'/>' target='_blank'><img src="<s:url value='%{picture}'/>" width=70 border=0 /> </a>
			</div>
			<div class=second_c_02_b1_2>
				<h3>
					<a href="<s:url action='ProductAll'/>?id=<s:property value='id'/>"><s:property value="name"/></a>
				</h3>
				<h4>
					作者：<s:property value="author"/> 著
					<br />
					出版社：<s:property value="publishing"/>&nbsp;&nbsp;&nbsp;&nbsp;出版时间：<s:property value="publishTime"/>
				</h4>
				<h5>
					<s:property value="contentend"/>
					<span class=pot>...</span>
				</h5>
				<h6>
					定价：￥<s:property value="pricing"/>&nbsp;&nbsp;当当价：￥<s:property value="sellingPrice"/>
				</h6>
			</div>
		</div>
		</s:iterator>
	</div>
</div>
