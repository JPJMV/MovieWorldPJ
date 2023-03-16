package com.JPJ.home.Dto;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewDto {
	private int rnum;
	private String rid;
	private String rname;
	private String rmovie;
	private String rgrade;
	private String rcontent;
	private Date rdate;
	private String rtitle;
}
