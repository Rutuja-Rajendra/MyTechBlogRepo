package com.myblog.entities;

import java.sql.Timestamp;
import java.time.Instant;

public class User {

	private int id;
	private String username;
	private String email;
	private String password;
	private String gender;
	private String about;
	private Timestamp reg_date = Timestamp.from(Instant.now());
	private String profile;
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public User(int id, String username, String email, String password, String gender, String about) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.about = about;
	}
	public User(String username, String email, String password, String gender, String about, String profile) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.about = about;
		this.profile = profile;
	}
	public User() {
		super();
	}
	
	
}
