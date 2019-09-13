package com.example.MentorOnDemand.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="mentor")
public class Mentor {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int mentor_id;
private String mentorName;
private String password;
private String linkedin_url;
private String dateTime;
private String regCode;
private int experience;
public int getExperience() {
	return experience;
}
public void setExperience(int experience) {
	this.experience = experience;
}
public Mentor() {
	super();
}

public Mentor(int mentor_id, String mentorName, String password, String linkedin_url, String dateTime, String regCode,
		int experience) {
	super();
	this.mentor_id = mentor_id;
	this.mentorName = mentorName;
	this.password = password;
	this.linkedin_url = linkedin_url;
	this.dateTime = dateTime;
	this.regCode = regCode;
	this.experience = experience;
}
public int getMentor_id() {
	return mentor_id;
}
public void setMentor_id(int mentor_id) {
	this.mentor_id = mentor_id;
}
public String getMentorName() {
	return mentorName;
}
public void setMentorName(String mentorName) {
	this.mentorName = mentorName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getLinkedin_url() {
	return linkedin_url;
}
public void setLinkedin_url(String linkedin_url) {
	this.linkedin_url = linkedin_url;
}
public String getDateTime() {
	return dateTime;
}
public void setDateTime(String dateTime) {
	this.dateTime = dateTime;
}
public String getRegCode() {
	return regCode;
}
public void setRegCode(String regCode) {
	this.regCode = regCode;
}
@Override
public String toString() {
	return "Mentor [mentor_id=" + mentor_id + ", mentorName=" + mentorName + ", password=" + password
			+ ", linkedin_url=" + linkedin_url + ", dateTime=" + dateTime + ", regCode=" + regCode + ", experience="
			+ experience + "]";
}

}
