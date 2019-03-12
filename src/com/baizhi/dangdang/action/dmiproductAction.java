package com.baizhi.dangdang.action;

import java.util.List;

import com.baizhi.dangdang.entity.Product;
import com.baizhi.dangdang.service.ProductService;
import com.baizhi.dangdang.serviceImpl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
/**
 * @category 首页面4个模块页面
 * */
public class dmiproductAction {
	private List<Product> list;
	public List<Product> getList() {
		return list;
	}

	public void setList(List<Product> list) {
		this.list = list;
	}

ProductService ps=new ProductServiceImpl();
	public String HotNewProduct(){
		list = ps.queryHotNewProduct();
		return "success";
	}
	public String RecommendProduct(){
		list=ps.queryRecommendProduct();
		return "recomOK";
		
	}
	public String NewProduct(){
		list=ps.queryNewProduct();
		return "newOK";
		
	}
	public String HotProduct(){
		list=ps.queryHotProduct();
		return "hotOK";
		
	}
}

