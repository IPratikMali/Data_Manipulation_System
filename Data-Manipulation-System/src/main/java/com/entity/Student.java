package com.entity;

public class Student 
{
	private int id;
	private String Name;
	private String prn;
	private String course;
	private String address;
	private String email;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Student(String name, String prn, String course, String address, String email) {
		super();
		Name = name;
		this.prn = prn;
		this.course = course;
		this.address = address;
		this.email = email;
	}
	
	
	public Student(int id, String name, String prn, String course, String address, String email) {
		super();
		this.id = id;
		this.Name = name;
		this.prn = prn;
		this.course = course;
		this.address = address;
		this.email = email;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPrn() {
		return prn;
	}
	public void setPrn(String prn) {
		this.prn = prn;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", Name=" + Name + ", prn=" + prn + ", course=" + course + ", address=" + address
				+ ", email=" + email + "]";
	}
	
}
