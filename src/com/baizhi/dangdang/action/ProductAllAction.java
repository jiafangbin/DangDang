package com.baizhi.dangdang.action;

import java.util.List;

import com.baizhi.dangdang.entity.Product;
import com.baizhi.dangdang.service.ProductService;
import com.baizhi.dangdang.serviceImpl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
/**
 * @category 商品详情页面
 * */
public class ProductAllAction extends ActionSupport {
private Product product;
private String id;

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public Product getProduct() {
	return product;
}

public void setProduct(Product product) {
	this.product = product;
}

@Override
public String execute() throws Exception {
	ProductService ps=new ProductServiceImpl();
	product = ps.queryAll(id);
	return "success";
}
}
