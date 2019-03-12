package com.baizhi.dangdang.service;

import java.util.List;

import com.baizhi.dangdang.entity.Category;

public interface CategoryService {
public List<Category> queryAll();
public Category queryCateById(String fid);
}
