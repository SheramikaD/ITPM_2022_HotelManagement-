package model;

public class Item {
	
	private Integer id;

	private String item_id;

	private String item_name;

	private String price;
	
//	private String itemfor;
	
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getItem_id() {
		return item_id;
	}

	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Item [id=" + id + ", item_id=" + item_id + ", item_name=" + item_name + ", price=" + price + "]";
	}

//	public String getItemfor() {
//		return itemfor;
//	}
//
//	public void setItemfor(String itemfor) {
//		this.itemfor = itemfor;
//	}

//	@Override
//	public String toString() {
//		return "Item [id=" + id + ", item_id=" + item_id + ", item_name=" + item_name + ", price=" + price
//				+ ", itemfor=" + itemfor + "]";
//	}

    
	
}
