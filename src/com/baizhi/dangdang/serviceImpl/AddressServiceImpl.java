package com.baizhi.dangdang.serviceImpl;

import java.util.List;
import java.util.UUID;

import com.baizhi.dangdang.dao.AddressDAO;
import com.baizhi.dangdang.dao.ProductDAO;
import com.baizhi.dangdang.entity.Address;
import com.baizhi.dangdang.entity.Product;
import com.baizhi.dangdang.service.AddressService;
import com.baizhi.dangdang.service.ProductService;
import com.baizhi.dangdang.util.MybatisUtil;

public class AddressServiceImpl implements AddressService {


	@Override
	public Address queryById(String id) {
		AddressDAO dao = (AddressDAO) MybatisUtil.getMapper(AddressDAO.class);
		Address address = dao.findById(id);
		return address;
	}

	@Override
	public List<Address> queryAddNameByUserId(String id) {
		AddressDAO dao = (AddressDAO) MybatisUtil.getMapper(AddressDAO.class);
		List<Address> list = dao.findAddNameByUserId(id);
		System.out.println(list);
		return list;
	}

	@Override
	public void InsertAddress(Address address) {
		try {
			AddressDAO dao = (AddressDAO) MybatisUtil.getMapper(AddressDAO.class);
			address.setId(UUID.randomUUID().toString().replace("-", ""));
			address.setUserId(address.getUser().getId());
			dao.insertAddress(address);
			MybatisUtil.commit();
		} catch (Exception e) {
			MybatisUtil.rollback();
			e.printStackTrace();
		}finally{
			MybatisUtil.close();
		}
	}


}
