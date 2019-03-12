package com.baizhi.dangdang.action;

import java.util.Collection;
import java.util.Map;

import com.baizhi.dangdang.entity.CartItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 * @category �������
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
	boolean b = count.matches("^[0-9]{1,4}$");//������ʽ
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
		price+=c.getSellingPrice();//��Ʒ�ܽ�� ��Ӧ������
		savePrice+=c.getPrcing()-c.getSellingPrice();//��ʡ��=����-������
	}
	vs.setValue("#session.map", map);
	vs.setValue("#session.price", price);
	vs.setValue("#session.savePrice", savePrice);
	return "success";
}
}
