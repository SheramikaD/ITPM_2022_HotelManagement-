package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Item;
import model.Item;
import util.DBConnectionUtil;

public class ItemDaoImpl implements ItemDao {
	//create variables
	Connection connection = null;
	ResultSet resultSet = null;
	Statement statement = null;
	PreparedStatement preparedStatement = null;

	@Override
	public List<Item> get() {
		List<Item> list = null;
		Item item = null;
		
		try {
			
			list = new ArrayList<Item>();
			String sql = "SELECT * FROM item";
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				item = new Item();
				item.setId(resultSet.getInt("id"));
				item.setItem_id(resultSet.getString("item_id"));
				item.setItem_name(resultSet.getString("item_name"));
				item.setPrice(resultSet.getString("price"));
				
				list.add(item);
		
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Item get(int id) {
		Item item = null;
		try {
			item = new Item();
			String sql = "SELECT * FROM item where id="+id;
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			if(resultSet.next()) {
				item.setId(resultSet.getInt("id"));
				item.setItem_id(resultSet.getString("item_id"));
				item.setItem_name(resultSet.getString("item_name"));
				item.setPrice(resultSet.getString("price"));
				
				

			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return item;
	}

	@Override
	public boolean save(Item item) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO item(item_id, item_name, price)VALUES"
					+ "('"+item.getItem_id()+"', '"+item.getItem_name()+"', '"+item.getPrice()+"')";
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}
		
// create delete function 
	@Override
	public boolean delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM item where id="+id;
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean update(Item item) {
		boolean flag = false;
		try {
			String sql = "UPDATE item SET item_id = '"+item.getItem_id()+"', "
					+ "item_name = '"+item.getItem_name()+"', price = '"+item.getPrice()+"'  WHERE id="+item.getId();
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public int GetMaxId() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean Update(int id, Item item) {
		boolean flag = false;
		try {
			String sql = "UPDATE reservation SET item_id='"+item.getItem_id()+"', item_name='"+item.getItem_name()+"', price='"+item.getPrice()+"' " +
					"WHERE id='"+id+"'";
connection = (Connection) DBConnectionUtil.openConnection();
preparedStatement = (PreparedStatement) connection.prepareStatement(sql);

preparedStatement.executeUpdate();
flag = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
}

}
