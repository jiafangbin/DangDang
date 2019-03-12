package com.baizhi.dangdang.entity;

import java.io.Serializable;
import java.util.List;
/**
 * @category 地址
 * */
public class Address implements Serializable {
private String id;
private String detailed;//详细地址
private String addName;//收件人姓名
private String postalCode;//邮编
private String tel;//电话
private String mobile;//手机
private String userId;
private User user; // 一个地址只有一个用户
private List<Order> orders;//一个地址有多个订单
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public Address() {
	super();
	// TODO Auto-generated constructor stub
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getAddName() {
	return addName;
}
public void setAddName(String addName) {
	this.addName = addName;
}
public String getDetailed() {
	return detailed;
}
public void setDetailed(String detailed) {
	this.detailed = detailed;
}
public String getPostalCode() {
	return postalCode;
}
public void setPostalCode(String postalCode) {
	this.postalCode = postalCode;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}

@Override
public String toString() {
	return "Address [id=" + id + ", addName=" + addName + ", detailed="
			+ detailed + ", postalCode=" + postalCode + ", tel=" + tel
			+ ", mobile=" + mobile + ", userId=" + userId + ", orderId="
			+ "]";
}

}
