package com.baizhi.dangdang.entity;

import java.io.Serializable;
import java.util.List;
/**
 * @category ∂©µ•œÍ«È“≥
 * */
public class OrderItems implements Serializable {
private String id;
private Integer count;
private double subtotal;
private String OrderId;
public OrderItems() {
	super();
	// TODO Auto-generated constructor stub
}
public OrderItems(String id, Integer count, double subtotal, String orderId) {
	super();
	this.id = id;
	this.count = count;
	this.subtotal = subtotal;
	OrderId = orderId;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public Integer getCount() {
	return count;
}
public void setCount(Integer count) {
	this.count = count;
}
public double getSubtotal() {
	return subtotal;
}
public void setSubtotal(double subtotal) {
	this.subtotal = subtotal;
}
public String getOrderId() {
	return OrderId;
}
public void setOrderId(String orderId) {
	OrderId = orderId;
}


}
