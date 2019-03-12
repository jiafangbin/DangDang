package com.baizhi.dangdang.test;

import java.sql.Date;

import com.baizhi.dangdang.dao.OrderDAO;
import com.baizhi.dangdang.dao.UserDAO;
import com.baizhi.dangdang.entity.Order;
import com.baizhi.dangdang.entity.User;
import com.baizhi.dangdang.util.MybatisUtil;

public class TestDAO { 
	public static void main(String[] args) {
	/*	OrderDAO dao = (OrderDAO) MybatisUtil.getMapper(OrderDAO.class);
		Order o=new Order("1",180.00,new Date(0),"1","1");
		dao.InsertOrder(o);*/
		/*AddressDAO O = (AddressDAO) MybatisUtil.getMapper(AddressDAO.class);
		List<Address> LIST = O.findAddNameByUserId("8ab09983665a4093a8abe7c8c02c8b31");
		System.out.println(LIST);*/
		
		/*ProductDAO dao=(ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
	
	List<Product> list = dao.findHotNewProduct();
	for (Product product : list) {
		System.out.println(list);*/
//		ProductDAO dao=(ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
//		
//		List<Product> list = dao.findHotProduct();
//		for (Product product : list) {
//			System.out.println(list);
/*ProductDAO dao=(ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
		List<Product> list = dao.findNewProduct();
		for (Product product : list) {
			System.out.println(list);*/
/*ProductDAO dao=(ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
			
			List<Product> list = dao.findRecommendProduct();
			for (Product product : list) {
				System.out.println(list);
	}
*/		
	/*	ProductDAO dao=(ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
		List<Product> list = dao.findProductAll("8");
		for (Product product : list) {
			System.out.println(list);
}*/
	
/*	ProductDAO dao=(ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
		List<Product> list = dao.findProduct("1");
		for (Product product : list) {
			System.out.println(list);
}*/

	
		/*CategoryDAO dao = (CategoryDAO) MybatisUtil.getMapper(CategoryDAO.class);
		 List<Category> list = dao.findAll();
		System.out.println(list);*/
	/*	CategoryDAO dao = (CategoryDAO) MybatisUtil.getMapper(CategoryDAO.class);
		 Category category = dao.findCateById("1");
		System.out.println(category);*/
/*ProductDAO dao=(ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
		Product product = dao.findAll("1");
		System.out.println(product);*/
/*ProductDAO dao=(ProductDAO) MybatisUtil.getMapper(ProductDAO.class);
		
	CategoryService cs=new CategoryServiceImpl();
	ProductService ps=new ProductServiceImpl();
	List<Product> list = ps.getAllProduct("1","8",1);
	Integer count = ps.getPageTotalCount("1","8");
	System.out.println(list);
	System.out.println(count);
	}*/
		UserDAO dao = (UserDAO) MybatisUtil.getMapper(UserDAO.class);
		User user=new User();
		dao.InsertUser(user);
		System.out.println(user);
	}
}
