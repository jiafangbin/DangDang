package com.baizhi.dangdang.serviceImpl;

import java.util.Date;
import java.util.UUID;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.ibatis.session.SqlSession;

import com.baizhi.dangdang.action.AddressAction;
import com.baizhi.dangdang.dao.UserDAO;
import com.baizhi.dangdang.entity.User;
import com.baizhi.dangdang.service.UserService;
import com.baizhi.dangdang.util.MybatisUtil;
import com.baizhi.dangdang.util.RandomSaltUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class UserServiceImpl implements UserService {

	@Override
	public User login(String email, String password) {
		UserDAO dao = (UserDAO) MybatisUtil.getMapper(UserDAO.class);
		User user = dao.findByEmail(email);
		if(user==null)throw new RuntimeException("” œ‰Œ¥◊¢≤·");
		String password1=DigestUtils.md5Hex(password+user.getSalt());
		if(!user.getPassword().equals(password1)){
			throw new RuntimeException("√‹¬Î¥ÌŒÛ");
		}
		user.setPassword(password1);
		return user;
	}

	@Override
	public void regist(User user) {

		try {
			String uuid = UUID.randomUUID().toString().replace("-", "");
			user.setId(uuid);
			user.setRegisTime(new Date());
			String salt= RandomSaltUtil.generetRandomSaltCode();
			String password=DigestUtils.md5Hex(user.getPassword()+salt);
			user.setSalt(salt);
			user.setPassword(password);
			
			UserDAO dao = (UserDAO) MybatisUtil.getMapper(UserDAO.class);
			dao.InsertUser(user);
			MybatisUtil.commit();
		} catch (Exception e) {
			MybatisUtil.rollback();
			e.printStackTrace();
		}finally{
			MybatisUtil.close();
		}
	}
}