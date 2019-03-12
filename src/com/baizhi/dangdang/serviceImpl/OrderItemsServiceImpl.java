package com.baizhi.dangdang.serviceImpl;


import java.util.UUID;

import com.baizhi.dangdang.dao.OrderItemsDAO;
import com.baizhi.dangdang.entity.OrderItems;
import com.baizhi.dangdang.service.OrderItemsService;
import com.baizhi.dangdang.util.MybatisUtil;



public class OrderItemsServiceImpl implements OrderItemsService {

	@Override
	public void addOrderItems(OrderItems orderItems) {
		try {
			orderItems.setId(UUID.randomUUID().toString().replace("-", ""));
			OrderItemsDAO dao = (OrderItemsDAO) MybatisUtil.getMapper(OrderItemsDAO.class);
			dao.addOrderItems(orderItems);
			MybatisUtil.commit();
		} catch (Exception e) {
			MybatisUtil.rollback();
			e.printStackTrace();
		}finally{
			MybatisUtil.close();
		}
	}	
	}

