package com.baizhi.dangdang.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {
	/*
	 * 1.����SqlSession
	 * 2.��Դ�ͷ�
	 * 3.��װdao
	 * 4.�ύ
	 * 5.�ع�
	 */
private static SqlSessionFactory factory=null;
private static final ThreadLocal<SqlSession> tl=new ThreadLocal<SqlSession>();
	static{
		Reader reader=null;
		try {
			 reader = Resources.getResourceAsReader("mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
public static SqlSession openSession(){
	SqlSession session = tl.get();
	if(session==null){
		session = factory.openSession();
		tl.set(session);
	}
	return session;
}
public static void close(){
	openSession().close();
	tl.remove();
}

public static Object getMapper(Class c){
	Object mapper = openSession().getMapper(c);
	return mapper;
}
public static void commit(){
	openSession().commit();
}
public static void rollback(){
	openSession().rollback();
}
}