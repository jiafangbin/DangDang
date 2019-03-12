package com.baizhi.dangdang.dao;

import org.apache.ibatis.annotations.Param;

import com.baizhi.dangdang.entity.User;
/**
 * @category µÇÂ¼  ×¢²á  ÓÃ»§DAO
 * */
public interface UserDAO {
public User findByEmail(@Param("email")String email);
public void InsertUser(User user);
}
