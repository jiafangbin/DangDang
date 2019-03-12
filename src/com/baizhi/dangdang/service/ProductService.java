package com.baizhi.dangdang.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.dangdang.entity.Product;

public interface ProductService {
	public List<Product> queryHotNewProduct();
	public List<Product> queryRecommendProduct();
	public List<Product> queryNewProduct();
	public List<Product> queryHotProduct();
	public Product queryAll(String id);
	public List<Product> queryFirst(String sid);
	public List<Product> querySecond(String fid);
	public List<Product> getAllProduct(String fid,String sid,Integer pageNo);//��ѯÿһҳ��ʾ��ͼ��
	public Integer getPageTotalCount(String fid,String sid);//��ѯ������
}
