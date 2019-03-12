package com.baizhi.dangdang.action;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.struts2.ServletActionContext;

import com.baizhi.dangdang.entity.User;
import com.baizhi.dangdang.service.UserService;
import com.baizhi.dangdang.serviceImpl.UserServiceImpl;
import com.baizhi.dangdang.util.MybatisUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class UserAction extends ActionSupport {
	private UserService userService = new UserServiceImpl();
	private ValueStack valueStack = ActionContext.getContext().getValueStack();
	private User user;
	private String password;
	private String email;
	private String Code;
	private String isOK;
	/*private String username;*/
	private String password1;
	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String code) {
		Code = code;
	}

	public String getIsOK() {
		return isOK;
	}

	public void setIsOK(String isOK) {
		this.isOK = isOK;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	// �û���¼
	public String UserLogin() {
		try {
			user = userService.login(email, password);
			/*
			 * String password = user.getSalt() + "password"; String md5Hex =
			 * DigestUtils.md5Hex(password);
			 */

			valueStack.setValue("#session.user", user);// ��user��ֵջ
			String isOK = valueStack.findString("#session.isok");
			if (isOK != null) {
				return "isOK";// ������д��ַҳ��(��ת�������û����е�ַ��action)
			}
			
			return "success";// ������ҳ��
		} catch (Exception e) {
			e.printStackTrace();
			valueStack.setValue("#session.message", e.getMessage());
			return "loginOK";//���ص�¼����
		}
	}

	// �û�ע��
	public String RegisterUser() {
		String code = (String) valueStack.findValue("#session.code");
		if (code.equalsIgnoreCase(Code)) {
			if(user.getPassword().equals(password1)){
				userService.regist(user);
				valueStack.setValue("#session.user", user);
				return "registOK";// ����ע��ɹ�ҳ��
				
			}else{
				return "registerror";// ����ע��ҳ��
			}
		} else {
			return "registerror";// ����ע��ҳ��
		}
	}
}