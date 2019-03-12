package com.baizhi.dangdang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.dangdang.entity.Address;
import com.baizhi.dangdang.entity.User;
/**
 * @category ��¼  ע��  �û�DAO
 * */
public interface AddressDAO {
public Address findById(String id);// ���ݵ�ַID��ѯ���е���Ϣ
public List<Address> findAddNameByUserId(String id);//�����û�id��ѯ���еĵ�ַ
public void insertAddress(Address address);
}
