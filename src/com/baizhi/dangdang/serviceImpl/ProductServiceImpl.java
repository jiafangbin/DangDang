package com.baizhi.dangdang.serviceImpl;

import java.util.List;

import com.baizhi.dangdang.dao.ProductDAO;
import com.baizhi.dangdang.entity.Product;
import com.baizhi.dangdang.service.ProductService;
import com.baizhi.dangdang.util.MybatisUtil;

public class ProductServiceImpl implements ProductService {

	@Override
	public List<Product> queryHotNewProduct() {
		ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		 
		
		return dao.findHotNewProduct();
	}

	@Override
	public List<Product> queryRecommendProduct() {
		ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
		
		return dao.findRecommendProduct();
	}

	@Override
	public List<Product> queryNewProduct() {
		ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
		
		return dao.findNewProduct();
	}

	@Override
	public List<Product> queryHotProduct() {
		ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
		
		return dao.findHotProduct();
	}

	@Override
	public List<Product> queryFirst(String sid) {
		ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
		return dao.findFirst(sid);
	}

	@Override
	public List<Product> querySecond(String fid) {
		ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		List<Product> list = dao.findSecond(fid);
		return list;
	}

	@Override
	public Product queryAll(String id) {
		ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		Product product = dao.findAll(id);
		return product;
	}


	@Override
	public List<Product> getAllProduct(String fid,String sid,Integer pageNo) {
		try {
			Integer pageCount = 3;//每页显示的条数
			Integer start = (pageNo-1)*pageCount+1;
			Integer end = pageNo*pageCount;
			ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
			List<Product> list = dao.getAllProduct(fid, sid, start, end);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查询失败");
		}finally{
			MybatisUtil.close();
		}
	}


	@Override
	public Integer getPageTotalCount(String fid,String sid) {
		try {
			ProductDAO dao = (ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
			Integer PageTotalCount = dao.getPageTotalCount(fid,sid);
			Integer pageCount = 3;//每页显示的条数
			if(PageTotalCount%pageCount==0){  
				return PageTotalCount/pageCount;
			}else{
				return PageTotalCount/pageCount+1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("没有数据");
		}finally{
			MybatisUtil.close();
		}
	}

}
