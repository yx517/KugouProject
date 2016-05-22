package com.kugou.pojo;

public class Img {
	private int imgID;
	private String imgName;
	private String imgURL;
	private String imgDescribe;
	public int getImgID() {
		return imgID;
	}
	public void setImgID(int imgID) {
		this.imgID = imgID;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getImgURL() {
		return imgURL;
	}
	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}
	public String getImgDescribe() {
		return imgDescribe;
	}
	public void setImgDescribe(String imgDescribe) {
		this.imgDescribe = imgDescribe;
	}
	public Img(int imgID, String imgName, String imgURL, String imgDescribe) {
		super();
		this.imgID = imgID;
		this.imgName = imgName;
		this.imgURL = imgURL;
		this.imgDescribe = imgDescribe;
	}
	public Img() {
		super();
	}
	
}
