package com.sofi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sofi.dbUtil.DbUtil;
import com.sofi.pojo.Product;

public class ProductDAO {

	
	//Insert Operation
	public int insert(Product product) throws ClassNotFoundException, SQLException {
		Connection con = DbUtil.getDbConn();
		String sql = "insert into product values (?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setInt(1, product.getPid());
		ps.setString(2, product.getPname());
		ps.setFloat(3,product.getCost());
		
		return ps.executeUpdate();
	}
	
	//Retrieve
	public List<Product> displayProduct() throws ClassNotFoundException, SQLException{
		
		Connection con = DbUtil.getDbConn();
		String sql = "select * from product";
		PreparedStatement ps = con.prepareStatement(sql);
		
		List<Product> list = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			Product product = new Product();
			
			product.setPid(rs.getInt("pid"));
			product.setPname(rs.getString("pname"));
			product.setCost(rs.getFloat("cost"));
			list.add(product);
			
		}
		return list;
	}
	
	// Retrieve a product by pid
	public Product getProductById(int pid) throws ClassNotFoundException, SQLException {
	    Connection con = DbUtil.getDbConn();
	    String sql = "select * from product where pid = ?";
	    PreparedStatement ps = con.prepareStatement(sql);
	    
	    ps.setInt(1, pid);

	    ResultSet rs = ps.executeQuery();
	    Product product = null;

	    if (rs.next()) {
	        product = new Product();
	        product.setPid(rs.getInt("pid"));
	        product.setPname(rs.getString("pname"));
	        product.setCost(rs.getFloat("cost"));
	    }

	    return product;
	}

		
		// Update product with pname and cost
		public int edit(Product product) throws ClassNotFoundException, SQLException {
		    Connection con = DbUtil.getDbConn();
		    String sql = "update product set pname = ?, cost = ? where pid = ?";
		    PreparedStatement ps = con.prepareStatement(sql);
		    
		    ps.setString(1, product.getPname());
		    ps.setFloat(2, product.getCost());
		    ps.setInt(3, product.getPid());
		    
		    return ps.executeUpdate();
		}


	
	
		// Delete product by pid
		public int delete(int pid) throws ClassNotFoundException, SQLException {
		    Connection con = DbUtil.getDbConn();
		    String sql = "delete from product where pid = ?";
		    PreparedStatement ps = con.prepareStatement(sql);
		    
		    ps.setInt(1, pid); // Set the pid parameter for the product to delete
		    return ps.executeUpdate();
		}

	
}
