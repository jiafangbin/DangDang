package com.baizhi.dangdang.service;

import com.baizhi.dangdang.entity.User;

public interface UserService {
public User login(String email,String password);
public void regist(User user);
}
