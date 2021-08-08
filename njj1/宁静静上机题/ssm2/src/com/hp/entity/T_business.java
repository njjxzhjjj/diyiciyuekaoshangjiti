package com.hp.entity;
//实体类
public class T_business {
	private int bId;
	private String bNum;
	private String bType;
	private String bMark;
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getbNum() {
		return bNum;
	}
	public void setbNum(String bNum) {
		this.bNum = bNum;
	}
	public String getbType() {
		return bType;
	}
	public void setbType(String bType) {
		this.bType = bType;
	}
	public String getbMark() {
		return bMark;
	}
	public void setbMark(String bMark) {
		this.bMark = bMark;
	}
	public T_business(int bId, String bNum, String bType, String bMark) {
		super();
		this.bId = bId;
		this.bNum = bNum;
		this.bType = bType;
		this.bMark = bMark;
	}
	public T_business() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "T_business [bId=" + bId + ", bNum=" + bNum + ", bType=" + bType
				+ ", bMark=" + bMark + "]";
	}
	
}
