package com.baizhi.dangdang.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
/**
 * @category  �û�
 * */
public class User implements Serializable {
private String id;
private String email;
private String username;
private String password;
private Date regisTime;
private String salt;//��
private List<Address> list;//һ���û���Ӧ�Ը���ַ
private List<Order> orders;//һ�����û���Ӧ�������

public List<Order> getOrders() {
	return orders;
}

public void setOrders(List<Order> orders) {
	this.orders = orders;
}

public User() {
	super();
}

public List<Address> getList() {
	return list;
}

public void setList(List<Address> list) {
	this.list = list;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Date getRegisTime() {
	return regisTime;
}
public void setRegisTime(Date regisTime) {
	this.regisTime = regisTime;
}
public String getSalt() {
	return salt;
}
public void setSalt(String salt) {
	this.salt = salt;
}
@Override
public String toString() {
	return "User [id=" + id + ", email=" + email + ", username=" + username
			+ ", password=" + password + ", regisTime=" + regisTime + ", salt="
			+ salt + "]";
}

}
