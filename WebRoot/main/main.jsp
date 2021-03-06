<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>当当图书 – 全球最大的中文网上书店</title>
		<link href="${pageContext.request.contextPath }/css/book.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/second.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/secBook_Show.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript">
  	$(function(){
  		$("img:gt(1)").mouseover(function(e){
  			var bigImg = $("<img id='bImg' src='"+$(this).prop("src")+"'/>");
  			bigImg.css({
  				"top":e.pageY+5,
  				"left":e.pageX+10,
  				"position":"absolute",
  				"height":200
  			});
  			$("body").append(bigImg);
  		}).mouseout(function(){
  			$("#bImg").remove();
  		}).mousemove(function(e){
  			$("#bImg").css({
  				"top":e.pageY+5,
  				"left":e.pageX+10,
  				"position":"absolute",
  				"height":200
  			});
  		});
  	});
  </script>
	</head>
	<body>
		&nbsp;
		<!-- 头部开始 -->
		<%@include file="../common/head.jsp"%>
		<!-- 头部结束 -->
		<div style="width: 962px; margin: auto;">
			<a href="#" target="_blank"><img
					src="${pageContext.request.contextPath }/images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>

		<div class="book">

			<!--左栏开始-->
			<div id="left" class="book_left">
			<s:action name="category" executeResult="true"></s:action>	 
			</div>
			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">

				<!--推荐图书开始-->
				<div class=second_c_border1 id="recommend">
				<s:action name="product_RecommendProduct" executeResult="true"></s:action>	
				</div>

				<!--推荐图书结束-->

				<!--热销图书开始-->
				<div class="book_c_border2" id="hot">
				<s:action name="product_HotProduct" executeResult="true"></s:action>	
				</div>
				<!--热销图书结束-->

				<!--最新上架图书开始-->
				<div class="book_c_border2" id="new">
				<s:action name="product_NewProduct" executeResult="true"></s:action>	
				</div>

				<!--最新上架图书结束-->

				<div class="clear">
				</div>
			</div>
			<!--中栏结束-->



			<!--右栏开始-->
			<div class="book_right">
				<div class="book_r_border2" id="__XinShuReMai">
					<div class="book_r_b2_1x" id="new_bang">
						<!-- <h2 class="t_xsrm">
							新书热卖榜
						</h2> -->
						<div id="NewProduct_1_o_t" onmouseover="">
						<s:action name="product_HotNewProduct" executeResult="true"></s:action>	
							<%--  <h3 class="second">
								<span class="dot_r"> </span><a href="#" target="_blank">更多&gt;&gt;</a>
							</h3> --%>
						</div>
					</div>
				</div>
			</div>
			<!--右栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		<%@include file="../common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>
