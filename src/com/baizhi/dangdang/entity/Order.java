package com.baizhi.dangdang.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
/**
 * @category 订单
 * */
public class Order implements Serializable {
private String id;
private double totalPrice;
private Date orderTime;//订单产生时间
private String addressId;
private String userId;
/*private Address address;//一个订单只有一地址；
private User user;//一个订单只有一个用户；
private List<Product> list;//一个订单有多个商品
*/public Order() {
	super();
	// TODO Auto-generated constructor stub
}
public Order(String id, double totalPrice, Date orderTime, String addressId,
		String userId) {
	super();
	this.id = id;
	this.totalPrice = totalPrice;
	this.orderTime = orderTime;
	this.addressId = addressId;
	this.userId = userId;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public double getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(double totalPrice) {
	this.totalPrice = totalPrice;
}
public Date getOrderTime() {
	return orderTime;
}
public void setOrderTime(Date orderTime) {
	this.orderTime = orderTime;
}
public String getAddressId() {
	return addressId;
}
public void setAddressId(String addressId) {
	this.addressId = addressId;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
@Override
public String toString() {
	return "Order [id=" + id + ", totalPrice=" + totalPrice + ", orderTime="
			+ orderTime + ", addressId=" + addressId + ", userId=" + userId
			+ "]";
}




}
