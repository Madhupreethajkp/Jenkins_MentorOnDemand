package com.example.MentorOnDemand.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="technology")
public class Technology {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private String name;
private String toc;
private int mentor_id;
private String start_time;
public String getStart_time() {
	return start_time;
}
public void setStart_time(String start_time) {
	this.start_time = start_time;
}
public int getMentor_id() {
	return mentor_id;
}
public void setMentor_id(int mentor_id) {
	this.mentor_id = mentor_id;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getToc() {
	return toc;
}
public void setToc(String toc) {
	this.toc = toc;
}
public Technology() {
	super();
}
public Technology(int id, String name, String toc, int mentor_id, String start_time) {
	super();
	this.id = id;
	this.name = name;
	this.toc = toc;
	this.mentor_id = mentor_id;
	this.start_time = start_time;
}
@Override
public String toString() {
	return "Technology [id=" + id + ", name=" + name + ", toc=" + toc + ", mentor_id=" + mentor_id + ", start_time="
			+ start_time + "]";
}



}
