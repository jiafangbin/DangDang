package com.baizhi.dangdang.dao;

import java.util.List;

import com.baizhi.dangdang.entity.Category;
/**
 * @category  һ������ҳ�����DAO 
 * */
public interface CategoryDAO {
public List<Category> findAll();
public Category findCateById(String fid);


}
