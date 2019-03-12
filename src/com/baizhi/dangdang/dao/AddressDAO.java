package com.baizhi.dangdang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.dangdang.entity.Address;
import com.baizhi.dangdang.entity.User;
/**
 * @category 登录  注册  用户DAO
 * */
public interface AddressDAO {
public Address findById(String id);// 根据地址ID查询多有的信息
public List<Address> findAddNameByUserId(String id);//根据用户id查询所有的地址
public void insertAddress(Address address);
}
