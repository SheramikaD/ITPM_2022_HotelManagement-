package com.xadmin.usermanagement.bean;

public class User {
	
	private int cid;
	private String firstName;
	private String middleName;
	private String lastName;
	private String email;
	private String addLine1;
	private String addLine2;
	private String addLine3;
	private String passport;
	private String nic;
	private String nationlity;
	
	
	
	public User(String firstName, String middleName, String lastName, String email, String addLine1, String addLine2,
			String addLine3, String passport, String nic, String nationlity) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.email = email;
		this.addLine1 = addLine1;
		this.addLine2 = addLine2;
		this.addLine3 = addLine3;
		this.passport = passport;
		this.nic = nic;
		this.nationlity = nationlity;
	}
	
	
	public User(int cid, String firstName, String middleName, String lastName, String email, String addLine1,
			String addLine2, String addLine3, String passport, String nic, String nationlity) {
		super();
		this.cid = cid;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.email = email;
		this.addLine1 = addLine1;
		this.addLine2 = addLine2;
		this.addLine3 = addLine3;
		this.passport = passport;
		this.nic = nic;
		this.nationlity = nationlity;
	}
	
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddLine1() {
		return addLine1;
	}
	public void setAddLine1(String addLine1) {
		this.addLine1 = addLine1;
	}
	public String getAddLine2() {
		return addLine2;
	}
	public void setAddLine2(String addLine2) {
		this.addLine2 = addLine2;
	}
	public String getAddLine3() {
		return addLine3;
	}
	public void setAddLine3(String addLine3) {
		this.addLine3 = addLine3;
	}
	public String getPassport() {
		return passport;
	}
	public void setPassport(String passport) {
		this.passport = passport;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getNationlity() {
		return nationlity;
	}
	public void setNationlity(String nationlity) {
		this.nationlity = nationlity;
	}
		

}