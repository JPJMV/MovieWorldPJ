package com.JPJ.home.Dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MovieDto {
	private int mnum;
	private String mname;
	private String mimg;
	private String mintroduction;
	private String mdata;
	private String mtype;
	private String mdirector;
	private String mgrade;
	private String mopen;
	private String mcast;
	private String mgenre;
	private String mtime;
}
