package com.baizhi.dangdang.action;

import java.io.PrintWriter;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.baizhi.dangdang.dao.ProductDAO;
import com.baizhi.dangdang.entity.CartItem;
import com.baizhi.dangdang.entity.Product;
import com.baizhi.dangdang.util.MybatisUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 * @category 添加购物车
 * */
public class CartItemajaxAction extends ActionSupport {
	private String productId;

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	@Override
	public String execute() throws Exception {
		Thread.sleep(1000);
		ValueStack vs = ActionContext.getContext().getValueStack();
		Map<String,CartItem> map = (Map<String,CartItem>) vs.findValue("#session.map");
		ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		Product product = dao.findAll(productId);
	
		if(map==null){             //购物车不存在
			map=new HashMap<String,CartItem>();
			CartItem cartItem = new CartItem(product, 1, product.getPricing(), product.getSellingPrice());
			map.put(productId, cartItem);
			vs.setValue("#session.map", map);
			vs.setValue("#session.price", product.getSellingPrice());
			vs.setValue("#session.savePrice",product.getPricing()-product.getSellingPrice());
		}else{
			CartItem cartItem=null;
			if(map.containsKey(productId)){    //购物车中之前买过这个商品
				 cartItem = map.get(productId);
				 
				 cartItem.setCount(cartItem.getCount()+1);
				 cartItem.setPrcing(cartItem.getCount()*product.getPricing());
				 cartItem.setSellingPrice(cartItem.getCount()*product.getSellingPrice());
				 map.put(productId, cartItem);
			}else{                            //购物车存在之前没买过
				CartItem cartItem1 = new CartItem(product, 1, product.getPricing(), product.getSellingPrice());
				map.put(productId, cartItem1);
			}
			Collection<CartItem> values = map.values();
			double price=0.0;//商品总金额
			double savePrice=0.0;//共节省的金额
			for (CartItem c : values) {
				price+=c.getSellingPrice();
				savePrice+=c.getPrcing()-c.getSellingPrice();
			}
			
			vs.setValue("#session.map", map);
			vs.setValue("#session.price", price);
			vs.setValue("#session.savePrice", savePrice);
		}
		// 使用IO流响应结果
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter(); 
		out.println("OK");
		
		return null;
	}

}
