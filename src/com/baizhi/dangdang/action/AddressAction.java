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
 * @category ��д��ַ
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
	 //��ӵ�ַ
public String addAddress(){
	User user = (User) vs.findValue("#session.user");//��ȡ�û���Ϣ
	if(address==null){   //���ǰ̨����ĵ�ַΪ��
		address=new Address();
	}
		address.setUser(user);
		as.InsertAddress(address);
		vs.setValue("#session.address", address);
		
		return "success";//��ת����ɶ���ҳ
	}
	
	//�����û�id��ѯ���е�ַ
public String queryByUserId(){
	User user = (User) vs.findValue("#session.user");//��ȡ�û���Ϣ
	list=as.queryAddNameByUserId(user.getId());
	
	vs.setValue("#session.list", list);
	if(index!=null){
		if(index>=0&&index<list.size()){
			address=list.get(index);
		}
	}
	return "ok"; //��ת����д��ַҳ���������ַ��д
}

}

