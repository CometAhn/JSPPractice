package dao;

import java.util.ArrayList;

import dto.product;

public class productrepository {

	// 변수 생성
	private ArrayList<product> listofproducts = new ArrayList<product>();
	
	// 싱글턴 설정
	private static productrepository instance = new productrepository();

	public static productrepository getinstance() {
		return instance;
	}
	
	// 생성자
	public productrepository() {

		product phone = new product("P1234", "iPhone 6S", 800000);
		phone.setDescription("대충 아이폰 설명");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsinstock(1000);
		phone.setCondition("new");

		product notebook = new product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("대충 노트북 설명");
		notebook.setCategory("NoteBook");
		notebook.setManufacturer("LG");
		notebook.setUnitsinstock(1000);
		notebook.setCondition("refurbished");

		product tablet = new product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("대충 태블릿 설명");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsinstock(1000);
		tablet.setCondition("old");

		// 생성된 객체를 ArrayList<product> listofproducts에 담는다.
		listofproducts.add(phone);
		listofproducts.add(notebook);
		listofproducts.add(tablet);

	}

	// 메서드 생성
	public ArrayList<product> getallproducts() {
		return listofproducts;
	}
	
	// 검색 기능 추가
	public product getproductbyid(String productid) {
		product productbyid = null;

		for (int i = 0; i < listofproducts.size(); i++) {
			product dto = listofproducts.get(i);
			if (dto != null && dto.getProductid() != null && dto.getProductid().equals(productid)) {
				productbyid = dto;
				break;
			}
		}
		return productbyid;
	}
	
	public void addproduct(product dto) {
		listofproducts.add(dto);
	}
}
