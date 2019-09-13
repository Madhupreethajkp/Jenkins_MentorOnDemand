package com.example.MentorOnDemand.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;


import com.example.MentorOnDemand.model.Admin;
import com.example.MentorOnDemand.service.AdminService;
@Controller
public class AdminControllerImpl implements AdminController {
	@Autowired
	AdminService adminService;
	@RequestMapping("/adminRegister")
	public String adminReg(){
		return "adminLogin";
	}
	@RequestMapping(value="/adminValidate")
	public String validateUser(Admin a) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		// TODO Auto-generated method stub
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mentor","root","root");
		PreparedStatement ps=con.prepareStatement("select admin_name,password from admin where admin_name=? and password=?");

		ps.setString(1, a.getAdminName());
		ps.setString(2, a.getPassword());
		//System.out.println(a.getEmail());
	System.out.println(a.getPassword());
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()) {
		
		System.out.println("login success");
		return "adminLandingPage";
		}
		
		
		else {
		
		return "index";
	}
	}
	@RequestMapping(value="/listDetail")
	public String listDetail(){
		return "listDetail";
	}
	
	
}
