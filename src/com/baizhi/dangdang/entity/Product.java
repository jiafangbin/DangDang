package com.baizhi.dangdang.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
/**
 * @category ��Ʒ  �鼮
 * */
public class Product implements Serializable {
private String id;
private String name;
private String author;
private String picture;//ͼƬ·��
private String publishing;//������
private Date publishTime;//��������
private Integer edition;//���
private Date printTime;//ӡˢʱ��
private Integer printNumber;//ӡ��
private String isbn;
private long addTime;//�ϼ�ʱ��
private String category;//���
private Integer wordNumber;//����
private String totalpage;//ҳ��
private String pageSize;//����  16����
private String paper;//ֽ��  ����ֽ
private String packaging;//��װ  ƽװ
private double pricing;//����
private double sellingPrice;//������
private String recommendid;//�Ƽ���
private Integer sales;//����
private String recommend;//�༭�Ƽ�
private String contentend;//���ݼ��
private String authorend;//���߼��
private String catalog;//Ŀ¼
private String media;//ý������
private String figure;//��ͼ
private String orderId;//����
private String crategoryId;//���Id;
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
