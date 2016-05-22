/**
 * 
 */
package com.kugou.pojo;

import java.io.Serializable;

/**
 * @author D.jack
 *
 */
public class Area implements Serializable{
	
	private static final long serialVersionUID = -815695373780076775L;
	private int AreaID;
	private String AreaName;
	public int getAreaID() {
		return AreaID;
	}
	public void setAreaID(int areaID) {
		AreaID = areaID;
	}
	public String getAreaName() {
		return AreaName;
	}
	public void setAreaName(String areaName) {
		AreaName = areaName;
	}
	public Area() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Area(int areaID, String areaName) {
		super();
		AreaID = areaID;
		AreaName = areaName;
	}
	@Override
	public String toString() {
		return "Area [AreaID=" + AreaID + ", AreaName=" + AreaName + "]";
	}
	

}
