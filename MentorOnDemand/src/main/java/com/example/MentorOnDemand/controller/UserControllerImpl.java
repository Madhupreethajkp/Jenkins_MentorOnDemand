package com.example.MentorOnDemand.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.MentorOnDemand.model.User;
import com.example.MentorOnDemand.service.UserService;




@Controller
public class UserControllerImpl implements UserController {
	@Autowired
	UserService userService;
	
	
	@Override
	@RequestMapping(value="/indexPage")
	public String index(){
		return "index";
	}
	@RequestMapping(value="/userRegister")
	public String registration(User user,ModelMap model) {
		model.addAttribute("user",user);
		return "userRegistration";
	}
	@RequestMapping(value="/userLogin")
	public String loginPage(){
		return "userLogin";
	}
	@RequestMapping(value="/logout")
	public String logoutPage(){
		return "index";
	}
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	public String insertUser(@ModelAttribute("user") @Validated User user) throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("Registerd");
	

	userService.insertUser(user);
	return "userLogin";
			
	}
	@RequestMapping(value="/userValidate")
	public String validateUser(User u) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		// TODO Auto-generated method stub
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mentor","root","root");
		PreparedStatement ps=con.prepareStatement("select email,password from user where email=? and password=?");

		ps.setString(1, u.getEmail());
		ps.setString(2, u.getPassword());
		System.out.println(u.getEmail());
	System.out.println(u.getPassword());
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()) {
		
		System.out.println("login success");
		return "userLandingPage";
		}
		
		
		else {
		
		return "userRegistration";
	}
	}
	
	@Override
	@RequestMapping(value="/listUser")
	public ModelAndView getUserList() throws SQLException{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("listUser");
		mv.addObject("listUser", userService.getUserList());
		return mv;
	}
	
	
}
