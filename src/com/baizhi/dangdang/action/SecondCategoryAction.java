package com.baizhi.dangdang.action;

import java.util.List;

import com.baizhi.dangdang.entity.Category;
import com.baizhi.dangdang.entity.Product;
import com.baizhi.dangdang.service.CategoryService;
import com.baizhi.dangdang.service.ProductService;
import com.baizhi.dangdang.serviceImpl.CategoryServiceImpl;
import com.baizhi.dangdang.serviceImpl.ProductServiceImpl;
/**
 * @category ¶þ¼¶Ò³Ãæ
 * */
public class SecondCategoryAction {
	private String fid;     
	private String sid;        
	private Category category;     
	private List<Product> list;     
	private Integer pageNo;    
	private Integer pageTotalCount;
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}

public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}


public List<Product> getList() {
		return list;
	}
	public void setList(List<Product> list) {
		this.list = list;
	}


public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageTotalCount() {
		return pageTotalCount;
	}
	public void setPageTotalCount(Integer pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}
public String execute(){
	CategoryService cs=new CategoryServiceImpl();
	ProductService ps=new ProductServiceImpl();
	if(pageNo == null){pageNo=1;}
	list = ps.getAllProduct(fid,sid,pageNo);
	pageTotalCount = ps.getPageTotalCount(fid,sid);
	category = cs.queryCateById(fid);
	return "success";
}

}
