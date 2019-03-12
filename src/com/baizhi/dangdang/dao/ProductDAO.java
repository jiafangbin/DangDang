package com.baizhi.dangdang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.dangdang.entity.Product;
/**
 * @category 热销 推荐 新上架 一级 二级 详情页 图书DAO
 * */
public interface ProductDAO {
	public List<Product> findHotNewProduct();
	public List<Product> findRecommendProduct();
	public List<Product> findNewProduct();
	public List<Product> findHotProduct();
	public Product findAll(String id);
	public List<Product> findFirst(String sid);
	public List<Product> findSecond(String fid);
	public List<Product> getAllProduct(@Param("fid")String fid,@Param("sid")String sid,@Param("start")Integer start,@Param("end")Integer end);//查询每一页显示的图书
	public Integer getPageTotalCount(@Param("fid")String fid,@Param("sid")String sid);//查询总条数
}
