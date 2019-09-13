package com.example.MentorOnDemand.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.MentorOnDemand.model.Technology;
import com.example.MentorOnDemand.model.Training;
import com.example.MentorOnDemand.service.TrainingService;


@Controller
public class TrainingControllerImpl implements TrainingController {
@Autowired
TrainingService trainingService;
@RequestMapping(value="/listRequest")

public ModelAndView getRequestList() throws SQLException{
	ModelAndView mv=new ModelAndView();
	mv.setViewName("listRequest");
	mv.addObject("listRequest", trainingService.getRequestList());
	return mv;
}

@RequestMapping(value="/techAccept")

public  String acceptRequest(@RequestParam("training_id") int training_id,@Validated Training training) 

{
	System.out.println(training_id);
	 Connection cn = null;
     Statement smt = null;
     try {
         Class.forName("com.mysql.jdbc.Driver");
         cn = DriverManager.
                 getConnection("jdbc:mysql://localhost:3306/mentor","root","root");
      
          smt=cn.createStatement();
          String q="Select * from training where training_id='"+training_id+"'";
          ResultSet rs=smt.executeQuery(q);
          String nn="accepted";
          if(rs.next())
			{
        	  String pat="status='"+nn+"'";
        	  q="update training set "+pat+" where training_id='"+training_id+"'";
        	  smt.executeUpdate(q);
			}
}
     catch(Exception e){
    	 System.out.println(e);
     }
     return "mentorLandingPage";
}

@RequestMapping(value="/techReject")


public String rejectRequest(@RequestParam("training_id") int training_id, ModelMap map, HttpServletRequest request,
 @ModelAttribute("listRequest") Training training,HttpSession session) throws ClassNotFoundException, SQLException {
ModelAndView mav = null;
training = trainingService.fetchStockUpdate(training_id);
trainingService.rejectRequest(training);
//mav = new ModelAndView("updateCompany");
return "mentorLandingPage";
}
@RequestMapping(value="/pay")

public ModelAndView getAcceptedList() throws SQLException{
	ModelAndView mv=new ModelAndView();
	mv.setViewName("acceptedList");
	mv.addObject("acceptedList", trainingService.getAcceptedList());
	return mv;
}

@RequestMapping(value="/confirmAccept")

public  String confirmRequest(@RequestParam("training_id") int training_id,@Validated Training training) 

{
	System.out.println(training_id);
	 Connection cn = null;
     Statement smt = null;
     try {
         Class.forName("com.mysql.jdbc.Driver");
         cn = DriverManager.
                 getConnection("jdbc:mysql://localhost:3306/mentor","root","root");
      
          smt=cn.createStatement();
          String q="Select * from training where training_id='"+training_id+"'";
          ResultSet rs=smt.executeQuery(q);
          String nn="accept confirmed";
          if(rs.next())
			{
        	  String pat="status='"+nn+"'";
        	  q="update training set "+pat+" where training_id='"+training_id+"'";
        	  smt.executeUpdate(q);
			}
}
     catch(Exception e){
    	 System.out.println(e);
     }
     return "adminLandingPage";
}

@RequestMapping(value="/confirmReject")
public String confirmRejectRequest(@RequestParam("training_id") int training_id, ModelMap map, HttpServletRequest request,
 @ModelAttribute("listRequest") Training training,HttpSession session) throws ClassNotFoundException, SQLException {
ModelAndView mav = null;
training = trainingService.fetchStockUpdate(training_id);
trainingService.rejectRequest(training);
//mav = new ModelAndView("updateCompany");
return "adminLandingPage";
}


@RequestMapping(value="/finalAccept")
public ModelAndView getFinList(){
	ModelAndView mv=new ModelAndView();
	mv.setViewName("finalAccept");
	System.out.println("final");
	mv.addObject("finalAccept", trainingService.getFinalList());
	return mv;
}
@RequestMapping(value="/viewStatus")
public ModelAndView getStatusList(){
	ModelAndView mv=new ModelAndView();
	mv.setViewName("viewStatus");
	System.out.println("final");
	mv.addObject("viewStatus", trainingService.getFinalList());
	return mv;
}
}