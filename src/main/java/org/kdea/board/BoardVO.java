package org.kdea.board;

import java.sql.Date;

public class BoardVO {
	private int a_num;
	private String a_title;
	private String a_author;
	private String a_contents;
	private int a_hitcnt;
	private Date a_date;
	private int a_ref;
	private int a_fnum;
	
	/*  a_	*/
	public int getA_num() {
		return a_num;
	}
	public void setA_num(int a_num) {
		this.a_num = a_num;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_contents() {
		return a_contents;
	}
	public void setA_contents(String a_contents) {
		this.a_contents = a_contents;
	}
	public int getA_hitcnt() {
		return a_hitcnt;
	}
	public void setA_hitcnt(int a_hitcnt) {
		this.a_hitcnt = a_hitcnt;
	}
	public Date getA_date() {
		return a_date;
	}
	public void setA_date(Date a_date) {
		this.a_date = a_date;
	}
	public String getA_author() {
		return a_author;
	}
	public void setA_author(String a_author) {
		this.a_author = a_author;
	}
	public int getA_ref() {
		return a_ref;
	}
	public void setA_ref(int a_ref) {
		this.a_ref = a_ref;
	}
	public int getA_fnum() {
		return a_fnum;
	}
	public void setA_fnum(int a_fnum) {
		this.a_fnum = a_fnum;
	}
	
	
	
	
}
