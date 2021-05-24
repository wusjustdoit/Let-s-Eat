package com.icia.eat.dto;

public class SearchDTO {

	private String city;		// 시/도 선택
	private String local;		// 구/군 선택
	private String food;		// 음식 카테고리 선택
	private String keyword;		// 키워드 입력
	
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	@Override
	public String toString() {
		return "SearchDTO [city=" + city + ", local=" + local + ", food=" + food + ", keyword=" + keyword + "]";
	}
	
	
}
