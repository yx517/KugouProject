package com.kugou.pojo;

public class Record {
	private int recordID;
	private String recordIP;
	private String recordName;
	private String recordDate;
	public int getRecordID() {
		return recordID;
	}
	public void setRecordID(int recordID) {
		this.recordID = recordID;
	}
	public String getRecordIP() {
		return recordIP;
	}
	public void setRecordIP(String recordIP) {
		this.recordIP = recordIP;
	}
	public String getRecordName() {
		return recordName;
	}
	public void setRecordName(String recordName) {
		this.recordName = recordName;
	}
	public String getRecordDate() {
		return recordDate;
	}
	public void setRecordDate(String recordDate) {
		this.recordDate = recordDate;
	}
	public Record(int recordID, String recordIP, String recordName,
			String recordDate) {
		super();
		this.recordID = recordID;
		this.recordIP = recordIP;
		this.recordName = recordName;
		this.recordDate = recordDate;
	}
	
	
	public Record(String recordIP, String recordName) {
		super();
		this.recordIP = recordIP;
		this.recordName = recordName;
	}
	public Record() {
		super();
	}
}
