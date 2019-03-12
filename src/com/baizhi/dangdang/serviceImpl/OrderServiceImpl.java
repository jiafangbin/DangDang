package com.baizhi.dangdang.serviceImpl;

import java.util.Date;
import java.util.UUID;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.ibatis.session.SqlSession;

import com.baizhi.dangdang.action.AddressAction;
import com.baizhi.dangdang.dao.OrderDAO;
import com.baizhi.dangdang.dao.UserDAO;
import com.baizhi.dangdang.entity.CartItem;
import com.baizhi.dangdang.entity.Order;
import com.baizhi.dangdang.entity.User;
import com.baizhi.dangdang.service.OrderItemsService;
import com.baizhi.dangdang.service.OrderService;
import com.baizhi.dangdang.service.UserService;
import com.baizhi.dangdang.util.MybatisUtil;
import com.baizhi.dangdang.util.RandomSaltUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class OrderServiceImpl implements OrderService {

	@Override
	public void addOrder(Order order) {
			try {
				
				String uuid=UUID.randomUUID().toString().replace("-", "");
				order.setId(uuid);//订单编号
				/*order.setTotalPrice(cartItem.getSellingPrice());//商品单价
				order.setAddressId(order.getAddress().getId());
				order.setUserId(order.getUser().getId());*/
				OrderDAO dao = (OrderDAO) MybatisUtil.getMapper(OrderDAO.class);
				dao.InsertOrder(order);
				
				MybatisUtil.commit();
			} catch (Exception e) {
				MybatisUtil.rollback();
				e.printStackTrace();
			}finally{
				MybatisUtil.close();
			}
			
		}

	}

