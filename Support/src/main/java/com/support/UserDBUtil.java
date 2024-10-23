package com.support;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    

	
	
	public static  List<User> validate(String name, String nic) {
		
           ArrayList<User> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from support where nic='"+nic+"' and name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String nic1 = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String date = rs.getString(6);
				String text = rs.getString(7);
				
				User c = new User(id,name1,nic1,phone,email,date,text);
				cus.add(c);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	
    
    public static boolean insertcustomer(String name, String nic, String phone, String email, String date,String text) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into support values (0,'"+name+"','"+nic+"','"+phone+"','"+email+"','"+date+"','"+text+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatecustomer(String id,String name, String nic, String phone, String email, String date,String text) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update support set name='"+name+"',nic='"+nic+"',phone='"+phone+"',email='"+email+"' ,date='"+date+"',text='"+text+"'  "
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<User> getCustomerDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<User> cus = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from support where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name1 = rs.getString(2);
				String nic1 = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String date = rs.getString(6);
				String text = rs.getString(7);
				
				User c = new User(id,name1,nic1,phone,email,date,text);
				cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
    
    public static boolean deleteCustomer(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from support where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    
    public static List<User> getAllAdmins() {
	    ArrayList<User> admins = new ArrayList<>();
	    
	    try {
	        // DB CONNECTION
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "select * from support";
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            String nic = rs.getString(3);
	            String phone = rs.getString(4);
	            String email = rs.getString(5);
	            String date = rs.getString(6);
	            String text = rs.getString(7);
	            
	            User a = new User(id, name, nic,phone,email,date,text);
	            admins.add(a);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return admins;
	}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
