package com.baizhi.dangdang.action;

import java.util.HashMap;
import java.util.Map;

import com.baizhi.dangdang.entity.CartItem;
import com.baizhi.dangdang.entity.Product;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 * @category 购物车中删除商品
 * */
public class deleteAction extends ActionSupport {
	
	private String productId;
	
public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

@Override
public String execute() throws Exception {
	ValueStack vs = ActionContext.getContext().getValueStack();
	Map map = (Map) vs.findValue("#session.map");
	CartItem cartItem = (CartItem) map.get(productId);
	HashMap<String, CartItem> map2= (HashMap<String, CartItem>)vs.findValue("#session.map2");
	if(map2==null){
		map2= new HashMap<String,CartItem>();
		vs.setValue("#session.map2", map2);
	}
	map2.put(productId, cartItem);
	map.remove(productId);
	double price=(Double) vs.findValue("#session.price");//获取商品的总价格
	double savePrice=(Double) vs.findValue("#session.savePrice");//获取商品的节省价
	vs.setValue("#session.price", price-cartItem.getSellingPrice());
	vs.setValue("#session.savePrice", savePrice-(cartItem.getPrcing()-cartItem.getSellingPrice()));
	vs.setValue("#session.map", map);
	vs.setValue("#session.map2", map2);
	return "success";
}
}
