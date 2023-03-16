package com.JPJ.home.Dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class dto {
	private int snum;
	private String rseat;
	private Timestamp rdate;
	private String rid;
	private int rnum;
}
