package com.baizhi.dangdang.entity;

import java.io.Serializable;
/**
 * @category ���ﳵ����
 * */
public class CartItem implements Serializable {
	private Product product;
	private int count;
	private double Prcing;//�г���С��
	private double SellingPrice;//������С��
	public CartItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartItem(Product product, int count, double prcing,
			double sellingPrice) {
		super();
		this.product = product;
		this.count = count;
		Prcing = prcing;
		SellingPrice = sellingPrice;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getPrcing() {
		return Prcing;
	}
	public void setPrcing(double prcing) {
		Prcing = prcing;
	}
	public double getSellingPrice() {
		return SellingPrice;
	}
	public void setSellingPrice(double sellingPrice) {
		SellingPrice = sellingPrice;
	}
	@Override
	public String toString() {
		return "CartItem [product=" + product + ", count=" + count
				+ ", Prcing=" + Prcing + ", SellingPrice=" + SellingPrice + "]";
	}
	
}	