package com.baizhi.dangdang.entity;

import java.io.Serializable;
import java.util.List;
/**
 * @category Àà±ð
 * */
public class Category implements Serializable {
private String id;
private Integer count;
private String classify;
private String parentId;
private Category cate;
private List<Category> list;

public Category() {
	super();
}

public Integer getCount() {
	return count;
}

public void setCount(Integer count) {
	this.count = count;
}

public Category getCate() {
	return cate;
}

public void setCate(Category cate) {
	this.cate = cate;
}

public List<Category> getList() {
	return list;
}

public void setList(List<Category> list) {
	this.list = list;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getClassify() {
	return classify;
}
public void setClassify(String classify) {
	this.classify = classify;
}
public String getParentId() {
	return parentId;
}
public void setParentId(String parentId) {
	this.parentId = parentId;
}

@Override
public String toString() {
	return "Category [id=" + id + ", count=" + count + ", classify=" + classify
			+ ", parentId=" + parentId + ", cate=" + cate + ", list=" + list
			+ "]";
}





}
