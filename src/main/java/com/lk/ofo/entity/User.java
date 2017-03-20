package com.lk.ofo.entity;

/**
 * 管理员
 * @author lkj41110
 * @version time：2017年3月10日 下午1:48:12
 */
public class User extends Basis{
	private int id;
	private String name;
	private String password;
	private String phone;
	private int score;
	private int grade;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + "]";
	}
	
	
}
