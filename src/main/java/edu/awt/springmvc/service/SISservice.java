package edu.awt.springmvc.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import edu.awt.springmvc.bean.Order;
import edu.awt.springmvc.bean.OrderDetail;
import edu.awt.springmvc.bean.Product;

@Service
public class SISservice {
	@Autowired
	JdbcTemplate db;

	public void InsertOrder() {
		String sql = "Insert into orders(orderdate) values(?)";
		db.update(sql, new Date());
	}
	
	public Order getOrderById(int orderid){
		String sql = "select * from orders where orderid = ?";
		return db.queryForObject(sql,new Object[]{orderid},new BeanPropertyRowMapper<Order>(Order.class));
	}

	public List<OrderDetail> getOrders(int orderid) {
		String sql = "select p.*,o.* from products p left outer join orderdetail o on p.productid = o.productid where o.orderid = ?";
		return db.query(sql, new Object[] { orderid }, new BeanPropertyRowMapper<OrderDetail>(OrderDetail.class));
	}
	
	public List<Map<String,Object>> listOrders (int orderid){
		String sql = "select p.*,o.*,sum(p.price*o.qty) as total from products p left outer join orderdetail o on p.productid = o.productid where o.orderid = ?";
		return db.queryForList(sql,orderid);
	}
	
	public Product getProduct(int productid){
		String sql = "select * from products where productid = ?";
		return db.queryForObject(sql,new Object[]{productid},new BeanPropertyRowMapper<Product>(Product.class));
	}
	
	public void InsertProduct(int orderid, int productid, int qty){
		String sql = "insert into orderdetail (orderid,productid,qty) values(?,?,?)";
		db.update(sql,new Object[]{orderid,productid,qty});
	}
	
	public Order getMaxOrderId(){
		String sql = "select * from orders where orderid = (select max(orderid) from orders);";
		return db.queryForObject(sql, new BeanPropertyRowMapper<Order>(Order.class));
	}

}
