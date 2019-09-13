package com.example.MentorOnDemand.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int admin_id;
private String adminName;
private String password;
public Admin() {
	super();
}
public Admin(int admin_id, String adminName, String password) {
	super();
	this.admin_id = admin_id;
	this.adminName = adminName;
	this.password = password;
}
public int getAdmin_id() {
	return admin_id;
}
public void setAdmin_id(int admin_id) {
	this.admin_id = admin_id;
}
public String getAdminName() {
	return adminName;
}
public void setAdminName(String adminName) {
	this.adminName = adminName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "Admin [admin_id=" + admin_id + ", adminName=" + adminName + ", password=" + password + "]";
}
}
