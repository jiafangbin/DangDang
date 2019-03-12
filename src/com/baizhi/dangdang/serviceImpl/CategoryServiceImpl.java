package com.baizhi.dangdang.serviceImpl;

import java.util.List;

import com.baizhi.dangdang.dao.CategoryDAO;
import com.baizhi.dangdang.entity.Category;
import com.baizhi.dangdang.service.CategoryService;
import com.baizhi.dangdang.util.MybatisUtil;

public class CategoryServiceImpl implements CategoryService {

	@Override
	public List<Category> queryAll() {
		CategoryDAO dao = (CategoryDAO) MybatisUtil.getMapper(CategoryDAO.class);
		List<Category> list = dao.findAll();
		
		return list;
	}

	@Override
	public Category queryCateById(String fid) {
		CategoryDAO dao = (CategoryDAO) MybatisUtil.getMapper(CategoryDAO.class);
		Category category = dao.findCateById(fid);
		return category;
	}


}
