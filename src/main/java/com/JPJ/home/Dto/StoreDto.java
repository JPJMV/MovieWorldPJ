package com.JPJ.home.Dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StoreDto {
	private int num;
	private String goodsname;
	private String price;
	private String composition;
	private String introduction;
	private String origin;
	private String img;
	private String type;
}
