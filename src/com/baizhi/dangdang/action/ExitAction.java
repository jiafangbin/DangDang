package com.baizhi.dangdang.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
/**
 * @category ��ȫ�˳�/�ǳ�
 * */
public class ExitAction implements Action {

	@Override
	public String execute() throws Exception {
		HttpServletRequest req = ServletActionContext.getRequest();
		HttpSession session = req.getSession();
		
		
		session.invalidate();
		
		return "success";
	}

}
