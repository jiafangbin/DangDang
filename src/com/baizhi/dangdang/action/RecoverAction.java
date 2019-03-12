package com.baizhi.dangdang.action;

import java.util.HashMap;
import java.util.Map;

import com.baizhi.dangdang.entity.CartItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 * @category  恢复
 * */
public class RecoverAction extends ActionSupport {
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
	HashMap<String,CartItem> map2 = (HashMap<String,CartItem>)vs.findValue("#session.map2");
	HashMap<String,CartItem> map=(HashMap<String,CartItem>)vs.findValue("#session.map");
	CartItem cartItem = map2.get(productId);
	if(map.containsKey(productId)){
	/*map.put(productId, cartItem);*/
	map2.remove(productId);
	}else{
	map.put(productId, cartItem);
	map2.remove(productId);
	double price=(Double) vs.findValue("#session.price");//获取商品的总价格
	double savePrice=(Double) vs.findValue("#session.savePrice");//获取商品的节省价
	vs.setValue("#session.price", price+cartItem.getSellingPrice());
	vs.setValue("#session.savePrice", savePrice+(cartItem.getPrcing()-cartItem.getSellingPrice()));
	}
	vs.setValue("#session.map", map);
	vs.setValue("#session.map2", map2);
	return "success";
}
}
