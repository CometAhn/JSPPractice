package dto;

import java.io.Serializable; // 동시에 x.

public class product implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String productid;
	private String pname;
	private Integer unitprice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitsinstock;
	private String condition;

	// 생성자 생성 : 객체 생성 시 어떤 모양으로 생성 할지
	public product() {
		super();
	}

	// 생성자 생성 : 객체 생성 시 어떤 모양으로 생성 할지
	public product(String productid, String pname, Integer unitprice) {
		this.productid = productid;
		this.pname = pname;
		this.unitprice = unitprice;
	}

	// getter, setter 생성
	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitprice() {
		return unitprice;
	}

	public void setUnitprice(Integer unitprice) {
		this.unitprice = unitprice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsinstock() {
		return unitsinstock;
	}

	public void setUnitsinstock(long unitsinstock) {
		this.unitsinstock = unitsinstock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

}
