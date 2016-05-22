package com.kugou.pojo;

public class Cooperate {
	
	private int cooperateID;
	
	private String cooperateName;
	
	private String cooperateURL;

	public int getCooperateID() {
		return cooperateID;
	}

	public void setCooperateID(int cooperateID) {
		this.cooperateID = cooperateID;
	}

	public String getCooperateName() {
		return cooperateName;
	}

	public void setCooperateName(String cooperateName) {
		this.cooperateName = cooperateName;
	}

	public String getCooperateURL() {
		return cooperateURL;
	}

	public void setCooperateURL(String cooperateURL) {
		this.cooperateURL = cooperateURL;
	}

	public Cooperate(int cooperateID, String cooperateName, String cooperateURL) {
		super();
		this.cooperateID = cooperateID;
		this.cooperateName = cooperateName;
		this.cooperateURL = cooperateURL;
	}

	public Cooperate() {
		super();
	}

	
}
