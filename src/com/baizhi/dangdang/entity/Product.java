package com.baizhi.dangdang.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
/**
 * @category 商品  书籍
 * */
public class Product implements Serializable {
private String id;
private String name;
private String author;
private String picture;//图片路径
private String publishing;//出版社
private Date publishTime;//出版日期
private Integer edition;//版次
private Date printTime;//印刷时间
private Integer printNumber;//印次
private String isbn;
private long addTime;//上架时间
private String category;//类别
private Integer wordNumber;//字数
private String totalpage;//页数
private String pageSize;//开本  16开；
private String paper;//纸张  胶版纸
private String packaging;//包装  平装
private double pricing;//定价
private double sellingPrice;//当当价
private String recommendid;//推荐度
private Integer sales;//销量
private String recommend;//编辑推荐
private String contentend;//内容简介
private String authorend;//作者简介
private String catalog;//目录
private String media;//媒体评论
private String figure;//插图
private String orderId;//订单
private String crategoryId;//类别Id;
public Product() {
	super();
	// TODO Auto-generated constructor stub
}

public String getRecommend() {
	return recommend;
}

public void setRecommend(String recommend) {
	this.recommend = recommend;
}

public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


public String getPicture() {
	return picture;
}


public void setPicture(String picture) {
	this.picture = picture;
}


public Integer getSales() {
	return sales;
}


public void setSales(Integer sales) {
	this.sales = sales;
}


public long getAddTime() {
	return addTime;
}


public void setAddTime(long addTime) {
	this.addTime = addTime;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getPublishing() {
	return publishing;
}
public void setPublishing(String publishing) {
	this.publishing = publishing;
}
public Date getPublishTime() {
	return publishTime;
}
public void setPublishTime(Date publishTime) {
	this.publishTime = publishTime;
}
public Integer getEdition() {
	return edition;
}
public void setEdition(Integer edition) {
	this.edition = edition;
}
public Date getPrintTime() {
	return printTime;
}
public void setPrintTime(Date printTime) {
	this.printTime = printTime;
}
public Integer getPrintNumber() {
	return printNumber;
}
public void setPrintNumber(Integer printNumber) {
	this.printNumber = printNumber;
}
public String getIsbn() {
	return isbn;
}
public void setIsbn(String isbn) {
	this.isbn = isbn;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public Integer getWordNumber() {
	return wordNumber;
}
public void setWordNumber(Integer wordNumber) {
	this.wordNumber = wordNumber;
}
public String getTotalpage() {
	return totalpage;
}
public void setTotalpage(String totalpage) {
	this.totalpage = totalpage;
}
public String getPageSize() {
	return pageSize;
}
public void setPagSize(String pageSize) {
	this.pageSize = pageSize;
}
public String getPaper() {
	return paper;
}
public void setPaper(String paper) {
	this.paper = paper;
}
public String getPackaging() {
	return packaging;
}
public void setPackaging(String packaging) {
	this.packaging = packaging;
}
public double getPricing() {
	return pricing;
}
public void setPricing(double pricing) {
	this.pricing = pricing;
}
public double getSellingPrice() {
	return sellingPrice;
}
public void setSellingPrice(double sellingPrice) {
	this.sellingPrice = sellingPrice;
}
public String getRecommendid() {
	return recommendid;
}
public void setRecommendid(String recommendid) {
	this.recommendid = recommendid;
}
public String getContentend() {
	return contentend;
}
public void setContentend(String contentend) {
	this.contentend = contentend;
}
public String getAuthorend() {
	return authorend;
}
public void setAuthorend(String authorend) {
	this.authorend = authorend;
}
public String getCatalog() {
	return catalog;
}
public void setCatalog(String catalog) {
	this.catalog = catalog;
}
public String getMedia() {
	return media;
}
public void setMedia(String media) {
	this.media = media;
}
public String getFigure() {
	return figure;
}
public void setFigure(String figure) {
	this.figure = figure;
}
public String getOrderId() {
	return orderId;
}
public void setOrderId(String orderId) {
	this.orderId = orderId;
}
public String getCrategoryId() {
	return crategoryId;
}
public void setCrategoryId(String crategoryId) {
	this.crategoryId = crategoryId;
}


@Override
public String toString() {
	return "Product [id=" + id + ", author=" + author + ", picture=" + picture
			+ ", publishing=" + publishing + ", publishTime=" + publishTime
			+ ", edition=" + edition + ", printTime=" + printTime
			+ ", printNumber=" + printNumber + ", isbn=" + isbn + ", addTime="
			+ addTime + ", category=" + category + ", wordNumber=" + wordNumber
			+ ", totalpage=" + totalpage + ", pageSize=" + pageSize
			+ ", paper=" + paper + ", packaging=" + packaging + ", pricing="
			+ pricing + ", sellingPrice=" + sellingPrice + ", recommendid="
			+ recommendid + ", sales=" + sales + ", contentend=" + contentend
			+ ", authorend=" + authorend + ", catalog=" + catalog + ", media="
			+ media + ", figure=" + figure + ", orderId=" + orderId
			+ ", crategoryId=" + crategoryId + "]";
}


}
