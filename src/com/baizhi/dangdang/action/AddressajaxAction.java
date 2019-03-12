package com.baizhi.dangdang.action;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.baizhi.dangdang.entity.Address;
import com.baizhi.dangdang.entity.User;
import com.baizhi.dangdang.service.AddressService;
import com.baizhi.dangdang.serviceImpl.AddressServiceImpl;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 * @category 填写地址
 * */
public class AddressajaxAction extends ActionSupport {
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

	//根据用户id查询所有地址
public String queryByUserId() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	//调用业务层中的方法
	User user = (User) vs.findValue("#session.user");//获取用户信息
	list=as.queryAddNameByUserId(user.getId());
	if(index!=null){
		if(index>=0&&index<list.size()){
			address=list.get(index);
		}
	}
	//将list装换成json
	Gson gson = new Gson();
	String json = gson.toJson(list);
	//响应结果
	PrintWriter out = response.getWriter();
	out.println(json);
	out.flush();
	return null;
	
}

}

