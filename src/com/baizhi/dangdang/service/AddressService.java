package com.baizhi.dangdang.service;

import java.util.List;

import com.baizhi.dangdang.entity.Address;
import com.baizhi.dangdang.entity.User;

public interface AddressService {
	public Address queryById(String id);// ���ݵ�ַID��ѯ���е���Ϣ
	public List<Address> queryAddNameByUserId(String id);//�����û�id��ѯ���еĵ�ַ
	public void InsertAddress(Address address);
}
