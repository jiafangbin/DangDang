<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<html>
	<head>
		<title>图书详情</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/book_detail.css"/>
		<link href="${pageContext.request.contextPath }/css/public_footer.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript">
  	$(function(){
  		$("img:eq(0)").click(function(){
  		
  			$(this).prop("src","${pageContext.request.contextPath }/productImages?time="+new Date().getTime());
  		}).mouseover(function(e){
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
  	function fun(img){
		img.src="${pageContext.request.contextPath}/images/load.gif";
		var xhr;
		if(window.ActiveXObject){
			xhr=new ActioveXObject("Microsoft.XMLHTTP");
		}else{
			xhr=new XMLHttpRequest();
		}
		xhr.open("GET","${pageContext.request.contextPath}/cartItemajax?productId=${product.id}",true);
		xhr.send();
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4 & xhr.status==200){
				var txt=xhr.responseText;
				console.log(txt);
				//跟换购买的状态
				img.src="${pageContext.request.contextPath}/images/right.gif";
				//设置一个定时器
				window.setTimeout(function(){
				img.src="${pageContext.request.contextPath}/images/booksale.gif";
				}, 1000);
			}
		}
	}
	</script>

  </script>
	</head>
	<body>
		<br/>
		
		<div><h1><s:property value="product.name"/></h1></div>
		丛书名：<s:property value="product.name"/>
		<hr/>
		<table width="80%" border="0" align="center" cellspacing="0" cellpadding="5">
			<tr>
				<td rowspan="9" width="20%" valign="top">
				<a href='<s:url value='/main/main.jsp'/>' target='_blank'>
				<img src="<s:url value='%{product.picture}'/>" width="120px" height="170px" /></td></a>
				<td colspan="2">作者：<s:property value="product.author"/></td>
			</tr>
			<tr>
				<td colspan="2">出版社：<s:property value="product.publishing"/></td>
			</tr>
			<tr>
				<td>出版时间：<s:property value="product.publishTime"/> </td>
				<td>字数：<s:property value="product.wordNumber"/></td>
			</tr>
			<tr>
				<td>版次：<s:property value="product.edition"/></td>
				<td>页数：<s:property value="product.totalpage"/></td>
			</tr>
			<tr>
				<td>印刷时间：<s:property value="product.printTime"/></td>
				<td>开本：<s:property value="product.pageSize"/></td>
			</tr>
			<tr>
				<td>印次：<s:property value="product.printNumber"/></td>
				<td>纸张：<s:property value="product.paper"/></td>
			</tr>
			<tr>
				<td>ISBN：<s:property value="product.isbn"/><td>
				<td>包装：<s:property value="product.packaging"/></td>
			</tr>
			<tr>
				<td colspan="2">定价：￥<s:property value="product.pricing"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<font color="red">当当价：￥<s:property value="product.sellingPrice"/></font>&nbsp;&nbsp;&nbsp;&nbsp;
				节省：￥<s:property value="product.pricing-product.sellingPrice"/><td>
			</tr>
			<tr>
				<td colspan="2"><a title=购买  name=purchase_book>
				  
				<img src="${pageContext.request.contextPath }/product_files/booksale.gif" onclick="fun(this)"/></a></td>
			</tr>
		</table>
		<hr style="border:1px dotted #666"/>
		<h2>编辑推荐</h2>
		<p><s:property value="product.recommend"/>&nbsp;&nbsp;</p>
		<hr style="border:1px dotted #666"/>
		<h2>内容简介</h2>
		<p><s:property value="product.contentend"/>&nbsp;&nbsp;</p>
		<hr style="border:1px dotted #666"/>
		<h2>作者简介</h2>
		<p<s:property value="product.authorend"/>="border:1px dotted #666"/>
		<h2>目录</h2>
		<p><s:property value="product.catalog"/>&nbsp;&nbsp;</p>
		<hr style="border:1px dotted #666"/>
		<h2>媒体评论</h2>
		<p><s:property value="product.media"/>&nbsp;&nbsp;</p>
		<hr style="border:1px dotted #666"/>
		<h2>书摘插图</h2>
		<p><s:property value="product.figure"/>&nbsp;&nbsp;</p>
		
		<!--页尾开始 -->
		<div class="public_footer">
			<div class="public_footer_bottom">
				<div class="public_footer_icp" style="line-height: 48px;">
					Copyright (C) 当当网 2004-2008, All Rights Reserved
					<a href="#" target="_blank"><img src="${pageContext.request.contextPath }/images/bottom/validate.gif" border="0" align="middle" /> </a>
					<a href="#" target="_blank" style="color: #666;">京ICP证041189号</a>
				</div>
			</div>
		</div>
		<!--页尾结束 -->
	</body>
</html>
