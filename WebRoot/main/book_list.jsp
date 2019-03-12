 <%@page contentType="text/html;charset=utf-8"%>
 <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>当当图书 – 全球最大的中文网上书店</title>
		<link href="${pageContext.request.contextPath }/css/book.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/second.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/list.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript">
  	$(function(){
  		$("img.pic").mouseover(function(e){
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
function fun(img,productId){
		img.src="${pageContext.request.contextPath}/images/load.gif";
		var xhr;
		if(window.ActiveXObject){
			xhr=new ActioveXObject("Microsoft.XMLHTTP");
		}else{
			xhr=new XMLHttpRequest();
		}
		xhr.open("GET","${pageContext.request.contextPath}/cartItemajax?productId="+productId,true);
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
	</head>
	<body>
		&nbsp;

		<!-- 头部开始 -->
		<%@include file="../common/head.jsp"%>
		<!-- 头部结束 -->

		<div style="width: 962px; margin: auto;">
			<a href="${pageContext.request.contextPath }/main/main.jsp"><img src="${pageContext.request.contextPath }/images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>
		<div class='your_position'>
			您现在的位置:&nbsp;
			<a href='<s:url value='/main/main.jsp'/>'>当当图书</a> &gt;&gt;
			<s:if test="sid==null">
			<font style='color: #cc3300'><strong><s:property value="category.classify" /></strong> </font>
			</s:if>
			<s:else>
				<a href='<s:url action='ProductAll'/>?fid=<s:property value="fid" />'><s:property value="category.classify" /></a>&gt;&gt;
			<s:iterator value="category.list">
				<s:if test="id==sid">
					<font style='color: #cc3300'><strong><s:property value="classify" /></strong></font>
				</s:if>
			</s:iterator>
			</s:else>
		</div>

		<div class="book">

			<!--左栏开始-->
			<div id="left" class="book_left">
				<div id="__fenleiliulan">
					<div class=second_l_border2>
						<h2>
							分类浏览
						</h2>
						<ul>
							<li>
								<div>
									<div class=second_fenlei>
										<a <s:if test="sid==null">style="color:red"</s:if> href="<s:url value='/SecondCategory'/>?fid=<s:property value='fid'/>">&middot;全部&nbsp;(<s:property value="category.count"/>)
									</div>
								</div>
							</li>
							<div class="clear"></div>
							
							<!--2级分类开始-->
												
						<s:iterator value="category.list" var="f">
						<li>
							<div>
							<div class=second_fenlei>
										&middot;
							</div>

							<div class=second_fenlei>
							<a <s:if test="sid==id">style="color:red"</s:if> href="<s:url value='/SecondCategory'/>?fid=<s:property value='fid'/>&sid=<s:property value='id'/>"><s:property value="classify"/>&nbsp;(<s:property value="count"/>)</a>
							</div>
							</div>
						</li>
							 
						<div class="clear"></div>
						</s:iterator>
							<!--2级分类结束-->
							
							<li>
								<div></div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">

				<!--图书列表开始-->
				<div id="divRight" class="list_right">

					<div id="book_list" class="list_r_title">
						<div class="list_r_title_text">
							排序方式
						</div>
						<select id="sele" onchange='initCity(this)' name='select_order' size='1'
							class='list_r_title_ml'>
							<option value="">按上架时间降序</option>
							<option value="">按销量降序</option>
           					<option value="">按推荐度降序</option>
						</select>
						<div id="divTopPageNavi" class="list_r_title_text3">

							<!--分页导航开始-->
							<s:if test="pageNo>1">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="<s:url value='/SecondCategory'/>?fid=<s:property value='fid'/><s:if test="sid!=null">&sid=<s:property value='sid'/></s:if>&pageNo=<s:property value='pageNo-1'/>">
								<img src='${pageContext.request.contextPath }/images/page_up.gif' /> </a>
							</div>
							</s:if>
							<s:else>
							<div class='list_r_title_text3a'>
								<img src='${pageContext.request.contextPath }/images/page_up_gray.gif' />
							</div>
							</s:else>
							<div class='list_r_title_text3b'>
								第<s:property value="pageNo"/>页/共<s:property value="pageTotalCount"/>页
							</div>
							<s:if test="pageNo<pageTotalCount">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="<s:url value='/SecondCategory'/>?fid=<s:property value='fid'/><s:if test="sid!=null">&sid=<s:property value='sid'/></s:if>&pageNo=<s:property value='pageNo+1'/>">
									<img src='${pageContext.request.contextPath }/images/page_down.gif' /> </a>
							</div>
							</s:if>
							<s:else>
							<div class='list_r_title_text3a'>
								<img src='${pageContext.request.contextPath }/images/page_down_gray.gif' />
							</div>
							</s:else>
							<!--分页导航结束-->
						</div>
					</div>
					
					<!--商品条目开始-->
						
						<div class="list_r_line"></div>
						<div class="clear"></div>
						<s:iterator value="list">
						<div class="list_r_list">
							<span class="list_r_list_book"><a name="link_prd_img" href='<s:url action='ProductAll'/>?id=<s:property value='id'/>'>
								<img class="pic" src="<s:url value='%{picture}'/>" /> </a> </span>
							<h2>
								<a name="link_prd_name" href='<s:url action='ProductAll'/>?id=<s:property value='id'/>'><s:property value="name"/></a>
							</h2>
							<h3>
								顾客评分：<s:property value="recommendid"/>
							</h3>
							<h4 class="list_r_list_h4">
								作 者:
								<a href='#' name='作者'><s:property value="author"/></a>
							</h4>
							<h4>
								出版社：
								<a href='#' name='出版社'><s:property value="publishing"/></a>
							</h4>
							<h4>
								出版时间：<s:property value="publishTime"/>
							</h4>
							<h5>
								<s:property value="catalog"/>
							</h5>
							<div class="clear"></div>
							<h6>
								<span class="del">￥<s:property value="pricing"/></span>
								<span class="red">￥<s:property value="sellingPrice"/></span>
								节省：<s:property value="pricing-sellingPrice"/>
							</h6>
							<span class="list_r_list_button"> 
							<a>  
							<img src='${pageContext.request.contextPath }/images/buttom_goumai.gif' onclick="fun(this,<s:property value="id"/>)"/> </a>
							<span id="cartinfo"></span>
						</div>
						</s:iterator>
						<div class="clear"></div>
						<!--商品条目结束-->

					<div class="clear"></div>
					<div id="divBottomPageNavi" class="fanye_bottom">
					</div>

				</div>
				<!--图书列表结束-->

			</div>
			<!--中栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		<%@include file="../common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html> 
