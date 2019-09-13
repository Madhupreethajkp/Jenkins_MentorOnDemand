package com.example.MentorOnDemand.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.MentorOnDemand.model.Mentor;
import com.example.MentorOnDemand.service.MentorService;


@Controller
public class MentorControllerImpl implements MentorController {
@Autowired
MentorService mentorService;

@Override
@RequestMapping(value="/addMentor",method=RequestMethod.GET)
public String form(Mentor mentor,ModelMap model) throws SQLException {
	
//mav = new ModelAndView("CompanyUpdate");
//return mav;
    System.out.println("company form");
	model.addAttribute("mentor",mentor);
	System.out.println("company form");
	return "mentorRegistration";
}

@RequestMapping(value="/addMentor",method=RequestMethod.POST)
public String insertMentor(@ModelAttribute("mentor") @Validated Mentor mentor) throws SQLException {
	// TODO Auto-generated method stub
	System.out.println("Registerd");
	

mentorService.insertMentor(mentor);
return "mentorLogin";
		
}
@RequestMapping(value="/mentorLogin")
public String log(){
	return "mentorLogin";
}

@RequestMapping(value="/mentorValidate")
public String validateUser(Mentor m,HttpServletRequest request, HttpServletResponse response) throws Exception {
	Class.forName("com.mysql.jdbc.Driver");
	// TODO Auto-generated method stub
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mentor","root","root");
	PreparedStatement ps=con.prepareStatement("select mentor_name,password from mentor where mentor_name=? and password=?");

	ps.setString(1, m.getMentorName());
	ps.setString(2, m.getPassword());
	//System.out.println(a.getEmail());
System.out.println(m.getPassword());
	ResultSet rs=ps.executeQuery();
	String mentorName=request.getParameter("mentorName");
	String mentor_id=request.getParameter("mentor_id");
	String password=request.getParameter("password");
	String linkedin_url=request.getParameter("linkedin_url");
	String dateTime=request.getParameter("dateTime");
	String regCode=request.getParameter("regCode");
	String experience=request.getParameter("experience");
	if(rs.next()) {
	
	System.out.println("login success");
	 HttpSession session = request.getSession();
     session.setAttribute("mentorName", mentorName);
     session.setAttribute("mentor_id", mentor_id);
     System.out.println(mentorName);
     session.setAttribute("password", password);
     session.setAttribute("linkedin_url", linkedin_url);
	return "mentorLandingPage";
	}
	
	
	else {
	
	return "mentorRegistration";
}
}
@Override
@RequestMapping(value="/listMentor")
public ModelAndView getMentorList() throws SQLException{
	ModelAndView mv=new ModelAndView();
	mv.setViewName("listMentor");
	mv.addObject("listMentor", mentorService.getMentorList());
	return mv;
}


@RequestMapping(value="/listMent")
public ModelAndView getMentList() throws SQLException{
	ModelAndView mv=new ModelAndView();
	mv.setViewName("listMent");
	mv.addObject("listMent", mentorService.getMentList());
	return mv;
}
@Override
@RequestMapping(value="/updateMentor")
public ModelAndView getMentor() throws Exception {
	// TODO Auto-generated method stub
	ModelAndView mv  = new ModelAndView();
	mv.setViewName("updateMentor");
	
	mv.addObject("updateMentor", mentorService.getMentor());
	return mv;
		}





}
