package com.baizhi.dangdang.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.struts2.ServletActionContext;

import com.baizhi.dangdang.dao.UserDAO;
import com.baizhi.dangdang.entity.User;
import com.baizhi.dangdang.service.UserService;
import com.baizhi.dangdang.serviceImpl.UserServiceImpl;
import com.baizhi.dangdang.util.MybatisUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class UserajaxAction extends ActionSupport {
	private String email;
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	// 用户注册
	public String execute() throws ServletException, IOException {
		try {
			Thread.sleep(1000);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		UserDAO dao = (UserDAO) MybatisUtil.getMapper(UserDAO.class);
		 user = dao.findByEmail(email);
		if(user!=null){
				// 用户名重复
				response.getWriter().println("邮箱不可用，重复");
				response.getWriter().flush();
			}else{
				//用户名可用
				response.getWriter().println("邮箱可用");
				response.getWriter().flush();
			}
		return null;
		}
	}