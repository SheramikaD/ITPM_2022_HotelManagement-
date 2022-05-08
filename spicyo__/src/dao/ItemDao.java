package dao;

import java.util.List;

import model.Item;

public interface ItemDao {

List<Item> get();
	
	Item get(int id);
	
	boolean save(Item item);
	
	boolean delete(int id);
	
	boolean update(Item item);

	int GetMaxId();

	boolean Update(int id, Item item);
	
}
