<%@page contentType="text/html;charset=utf-8"%>
 <%@taglib uri="/struts-tags" prefix="s" %>
<html>
  <head>
</head>
<body>
<div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>
			分类浏览
		</h2>
		<!--1级分类开始-->
		<s:iterator value="list" var="f">
			<div class="bg_old" onmouseover="this.className = 'bg_white';"
				onmouseout="this.className = 'bg_old';">
				
				<h3>
					[<a href='<s:url value='/SecondCategory'/>?fid=<s:property value='id'/>'><s:property value="classify"/></a>]
				</h3>
				<ul class="ul_left_list">
				
						<s:iterator value="list">
						<!--2级分类开始-->
						<li>
							<a href='<s:url value='/SecondCategory'/>?fid=<s:property value='#f.id'/>&sid=<s:property value='id'/>'><s:property value="classify"/></a>
						</li>
						<!--2级分类结束-->
						</s:iterator>
					<div class="empty_left">
				</div>
				</ul>
				
				<div class="more2">
			</div>
				
			</div>
			</s:iterator>
	
		<div class="bg_old">
			<h3>
				&nbsp;
			</h3>
		</div>
	</div>
</div>

</body>
</html>
