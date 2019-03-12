package com.baizhi.dangdang.dao;

import java.util.List;

import com.baizhi.dangdang.entity.Category;
/**
 * @category  一级二级页面类别DAO 
 * */
public interface CategoryDAO {
public List<Category> findAll();
public Category findCateById(String fid);


}
