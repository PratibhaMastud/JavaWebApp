package com.entites;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="notes_add")
public class Note {
@Id
private int id;
@Column(name = "title")
private String title;
@Column(name = "content_add")
private String content;
@Column(name = "datecurrent")
private Date Date;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getDate() {
	return Date;
}
public void setDate(Date Date) {
	this.Date = Date;
}

public Note() {
	super();
	// TODO Auto-generated constructor stub
}
public Note(String title, String content, Date Date) {
	super();
	this.id =new Random().nextInt(100000);
	this.title = title;
	this.content = content;
	this.Date = Date;
}

}
