<%@page contentType="text/html;charset=utf-8"%>

<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript">
  	$(function(){
  		$("img").click(function(){
  		
  			$(this).prop("src","${pageContext.request.contextPath }/productImages?time="+new Date().getTime());
  		}).mouseover(function(e){
  			var bigImg = $("<img id='bImg' src='"+$(this).prop("src")+"'/>");
  			bigImg.css({
  				"top":e.pageY+5,
  				"left":e.pageX+10,
  				"position":"absolute",
  				"height":100
  			});
  			$("body").append(bigImg);
  		}).mouseout(function(){
  			$("#bImg").remove();
  		}).mousemove(function(e){
  			$("#bImg").css({
  				"top":e.pageY+5,
  				"left":e.pageX+10,
  				"position":"absolute",
  				"height":100
  			});
  		});
  	});
  </script>
   --%>

<h2 class="t_xsrm">
			新书热卖榜
</h2>
		<div id="NewProduct_1_o_t" onmouseover="">
	<s:iterator value="list">
<ul>
	
	<li><a  target='_blank' href="<s:url action='ProductAll'/>?id=<s:property value='id'/>"><s:property value="name"/></a></li>
</ul>
</s:iterator>
	<h3 class="second">
		<span class="dot_r"> </span><a href="#" target="_blank">更多&gt;&gt;</a>
	</h3>
</div>
