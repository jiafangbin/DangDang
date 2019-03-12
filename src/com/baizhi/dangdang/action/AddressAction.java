package com.baizhi.dangdang.action;

import java.util.List;

import com.baizhi.dangdang.entity.Address;
import com.baizhi.dangdang.entity.User;
import com.baizhi.dangdang.service.AddressService;
import com.baizhi.dangdang.serviceImpl.AddressServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 * @category 填写地址
 * */
public class AddressAction extends ActionSupport {
	private String id;
	private Address address;
	private List<Address> list;
	private Integer index;
public List<Address> getList() {
		return list;
	}

	public void setList(List<Address> list) {
		this.list = list;
	}

public String getId() {
		return id;
	}

	public Integer getIndex() {
	return index;
}

public void setIndex(Integer index) {
	this.index = index;
}

	public void setId(String id) {
		this.id = id;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	 private AddressService as=new AddressServiceImpl();
	 private ValueStack vs = ActionContext.getContext().getValueStack();
	 //添加地址
public String addAddress(){
	User user = (User) vs.findValue("#session.user");//获取用户信息
	if(address==null){   //如果前台传入的地址为空
		address=new Address();
	}
		address.setUser(user);
		as.InsertAddress(address);
		vs.setValue("#session.address", address);
		
		return "success";//跳转到完成订单页
	}
	
	//根据用户id查询所有地址
public String queryByUserId(){
	User user = (User) vs.findValue("#session.user");//获取用户信息
	list=as.queryAddNameByUserId(user.getId());
	
	vs.setValue("#session.list", list);
	if(index!=null){
		if(index>=0&&index<list.size()){
			address=list.get(index);
		}
	}
	return "ok"; //跳转到填写地址页完成下拉地址填写
}

}

