package com.niit.model;




import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;


import org.springframework.web.multipart.MultipartFile;
@Entity
public class product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int proid;
	private String proname;
	private double proprice;
	private String procategory;
	private String prodetails;
	@Transient
	 MultipartFile File;
	private String myurl;

public String getMyurl() {
		return myurl;
	}
	public void setMyurl(String myurl) {
		this.myurl = myurl;
	}
public String getProdetails() {
		return prodetails;
	}
	public void setProdetails(String prodetails) {
		this.prodetails = prodetails;
	}
public String getProcategory() {
		return procategory;
	}
	public void setProcategory(String procategory) {
		this.procategory = procategory;
	}

	public MultipartFile getFile() {
		return File;
	}
	public void setFile(MultipartFile file) {
		File = file;
	}
	public int getProid() {
		return proid;
	}
	public void setProid(int productid) {
		this.proid = productid;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public double getProprice() {
		return proprice;
	}
	public void setProprice(double proprice) {
		this.proprice = proprice;
	}
	

}
