package com.baizhi.dangdang.action;

import java.util.List;

import com.baizhi.dangdang.entity.Category;
import com.baizhi.dangdang.service.CategoryService;
import com.baizhi.dangdang.serviceImpl.CategoryServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
/**
 * @category 首页面左栏分类页面
 * */
public class CategoryAction extends ActionSupport {
	private List<Category> list;
	
public List<Category> getList() {
		return list;
	}

	public void setList(List<Category> list) {
		this.list = list;
	}

@Override
public String execute() throws Exception {
	CategoryService cs=new CategoryServiceImpl();
	list = cs.queryAll();
	System.out.println(list+"1");
	return "success";
}
}
