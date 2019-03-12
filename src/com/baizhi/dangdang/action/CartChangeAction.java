package com.baizhi.dangdang.action;

import java.util.Collection;
import java.util.Map;

import com.baizhi.dangdang.entity.CartItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 * @category 数量变更
 * */
public class CartChangeAction extends ActionSupport {
	private String productId;
	private String count;
	
public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

@Override
public String execute() throws Exception {
	ValueStack vs = ActionContext.getContext().getValueStack();
	Map map = (Map) vs.findValue("#session.map");
	CartItem cartItem = (CartItem) map.get(productId);
	boolean b = count.matches("^[0-9]{1,4}$");//正则表达式
	if(b){
		cartItem.setCount(Integer.parseInt(count)==0?1:Integer.parseInt(count));
	}else{
		cartItem.setCount(1);
	}
	cartItem.setPrcing(cartItem.getCount()*cartItem.getProduct().getPricing());
	cartItem.setSellingPrice(cartItem.getCount()*cartItem.getProduct().getSellingPrice());
	map.put(productId, cartItem);
	double price=0.0;
	double savePrice=0.0;
	Collection <CartItem>values = map.values();
	for (CartItem c : values) {
		price+=c.getSellingPrice();//商品总金额 对应当当价
		savePrice+=c.getPrcing()-c.getSellingPrice();//节省价=定价-当当价
	}
	vs.setValue("#session.map", map);
	vs.setValue("#session.price", price);
	vs.setValue("#session.savePrice", savePrice);
	return "success";
}
}
