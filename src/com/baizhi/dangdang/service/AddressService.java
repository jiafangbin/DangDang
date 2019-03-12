package com.baizhi.dangdang.service;

import java.util.List;

import com.baizhi.dangdang.entity.Address;
import com.baizhi.dangdang.entity.User;

public interface AddressService {
	public Address queryById(String id);// 根据地址ID查询多有的信息
	public List<Address> queryAddNameByUserId(String id);//根据用户id查询所有的地址
	public void InsertAddress(Address address);
}
