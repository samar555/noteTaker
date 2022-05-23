package com.notes;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.Date;

@Entity
@Table(name="Notes")
public class todo {
	@Id
	@GeneratedValue
	private int id;
	
	private String title;
	private String content;
	private Date addDate;
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
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public todo(int id, String title, String content, Date addDate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.addDate = addDate;
	}
	public todo(String title, String content, Date addDate) {
		super();
		this.title = title;
		this.content = content;
		this.addDate = addDate;
	}
	public todo() {
		super();
		// TODO Auto-generated constructor stub
	}

}
