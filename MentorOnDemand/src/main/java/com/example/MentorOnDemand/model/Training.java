package com.example.MentorOnDemand.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="training")
public class Training {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int training_id;
private int id;
private String name;
private String toc;
private int mentor_id;
private String status;

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public Training() {
	super();
}

public Training(int training_id, int id, String name, String toc, int mentor_id,String status) {
	super();
	this.training_id = training_id;
	this.id = id;
	this.name = name;
	this.toc = toc;
	this.mentor_id = mentor_id;
	this.status = status;
}
public int getTraining_id() {
	return training_id;
}
public void setTraining_id(int training_id) {
	this.training_id = training_id;
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
public int getMentor_id() {
	return mentor_id;
}
public void setMentor_id(int mentor_id) {
	this.mentor_id = mentor_id;
}
@Override
public String toString() {
	return "Training [training_id=" + training_id + ", id=" + id + ", name=" + name + ", toc=" + toc + ", mentor_id="
			+ mentor_id +  "]";
}

}
