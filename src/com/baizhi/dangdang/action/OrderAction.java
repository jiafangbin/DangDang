package com.baizhi.dangdang.action;

import java.util.HashMap;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

import com.baizhi.dangdang.entity.Address;
import com.baizhi.dangdang.entity.CartItem;
import com.baizhi.dangdang.entity.Order;
import com.baizhi.dangdang.entity.OrderItems;
import com.baizhi.dangdang.entity.Product;
import com.baizhi.dangdang.entity.User;
import com.baizhi.dangdang.service.OrderItemsService;
import com.baizhi.dangdang.service.OrderService;
import com.baizhi.dangdang.serviceImpl.OrderItemsServiceImpl;
import com.baizhi.dangdang.serviceImpl.OrderServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 * @category 增加订单
 * */
public class OrderAction extends ActionSupport {
	private OrderItems orderItems;
	private Order order; 
	
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	
   public OrderItems getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(OrderItems orderItems) {
		this.orderItems = orderItems;
	}

	//添加订单
	public String addOrder(){
		ValueStack vs = ActionContext.getContext().getValueStack();
		OrderService orderService=new OrderServiceImpl();
		Order order = new Order();
		Address address=(Address) vs.findValue("#session.address");
		order.setAddressId(address.getId());
		User user = (User) vs.findValue("#session.user");
		order.setUserId(user.getId());
		double price=(Double) vs.findValue("#session.price");
		order.setTotalPrice(price);
		orderService.addOrder(order);
		OrderItemsService os=new OrderItemsServiceImpl();
		HashMap<String,CartItem>map=(HashMap<String, CartItem>) vs.findValue("#session.map");
		for (CartItem c : map.values()) {
			OrderItems newOrderItems = new OrderItems(null, c.getCount(), c.getSellingPrice(), order.getId());
			os.addOrderItems(newOrderItems);
			ServletActionContext.getRequest().getSession().removeAttribute("map");
		}
		vs.setValue("#session.order", order);
		return "success";//填写地址
		
	}
	//验证用户是否登录
	public String UserLogin(){
		ValueStack vs = ActionContext.getContext().getValueStack();
		User user = (User) vs.findValue("#session.user");
		if(user!=null){
			
			return "ok"; //填写地址
		}
		vs.setValue("#session.isok","isok");
		return "error";//返回登录界面
		
	}
	
}
