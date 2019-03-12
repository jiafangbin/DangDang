package com.baizhi.dangdang.entity;

import java.io.Serializable;
import java.util.List;
/**
 * @category ��ַ
 * */
public class Address implements Serializable {
private String id;
private String detailed;//��ϸ��ַ
private String addName;//�ռ�������
private String postalCode;//�ʱ�
private String tel;//�绰
private String mobile;//�ֻ�
private String userId;
private User user; // һ����ַֻ��һ���û�
private List<Order> orders;//һ����ַ�ж������
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
