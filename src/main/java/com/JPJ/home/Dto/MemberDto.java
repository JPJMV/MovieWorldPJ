package com.JPJ.home.Dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberDto {
	private String mid;//아이디
	private String mpw;//비밀번호
	private String mname;//이름
	private String memail;//이메일
	private Timestamp mdate;//가입일시
	private String mbirth;//회원생일
	private String mphone;//회원 전화번호
	private int mpoint;
}
