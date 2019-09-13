package com.example.MentorOnDemand.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.MentorOnDemand.dao.TechnologyDao;
import com.example.MentorOnDemand.model.Technology;
import com.example.MentorOnDemand.model.Training;
import com.example.MentorOnDemand.service.MentorService;
import com.example.MentorOnDemand.service.TechnologyService;
import com.example.MentorOnDemand.service.TrainingService;




@Controller
public class TechnologyControllerImpl implements TechnologyController{
	
@Autowired 
TechnologyService technologyService;
@Autowired
TechnologyDao technologyDao;
@Autowired
MentorService mentorService;
@Autowired
TrainingService trainingService;
@RequestMapping(value="/manageTech")
public String manage(){
	return "manageTech";
}


@Override
@RequestMapping(value="/addTech",method=RequestMethod.GET)
public String form(Technology technology,ModelMap model) throws SQLException {
	
	 ArrayList mentorDetails =(ArrayList) mentorService.getMentorList();
	    model.addAttribute("mentorList",mentorDetails);
	//map.addAttribute("update", company);
	//mav = new ModelAndView("CompanyUpdate");
	//return mav;
	    System.out.println("company form");
		model.addAttribute("tech",technology);
    System.out.println("company form");
	model.addAttribute("tech",technology);
	System.out.println("company form");
	return "technologyForm";
}



	@RequestMapping(value="/addTech",method=RequestMethod.POST)
	public String insertTechnology(@ModelAttribute("tech") @Validated Technology technology) throws SQLException {
		// TODO Auto-generated method stub
		
		technologyService.insertTechnology(technology);
		 return "manageTech";
			

}

@Override
@RequestMapping(value="/listTech")
public ModelAndView getTechnology() throws SQLException{
	ModelAndView mv=new ModelAndView();
	mv.setViewName("listTech");
	mv.addObject("listTech", technologyService.getTechnology());
	return mv;
}
@Override
@RequestMapping(value="/searchPage")
public ModelAndView getTechnologyList() throws SQLException{
	ModelAndView mv=new ModelAndView();
	mv.setViewName("searchPage");
	mv.addObject("searchPage", technologyService.getTechnologyList());
	return mv;
}

@RequestMapping(value="/sendRequest")
public String getTechnologyById(@RequestParam("id") int id) throws SQLException{
	ModelAndView mv=new ModelAndView();
	//mv.setViewName("listRequest");
	//mv.addObject("listRequest", technologyService.getTechnologyById(id));

	Technology tech=(Technology) technologyService.getTechnologyById(id);
	Training training=new Training();
	training.setMentor_id(tech.getMentor_id());
	training.setName(tech.getName());
	training.setToc(tech.getToc());
	training.setId(tech.getId());
training.setStatus("proposed");
	trainingService.insertTraining(training);
	
	//mv.addObject("searchPage");
	return "userLandingPage";
}


@RequestMapping(value="/search",method=RequestMethod.GET)
public String form1(Technology technology,ModelMap model) throws SQLException {
	 model.addAttribute("technology", new Technology());
	 ArrayList techDetails =(ArrayList)technologyService.getTechnologyList();
	    model.addAttribute("techList",techDetails);
	    ArrayList timeDetails =(ArrayList)technologyService.getTechnologyList();
	    model.addAttribute("timeList",timeDetails);
	//map.addAttribute("update", company);
	//mav = new ModelAndView("CompanyUpdate");
	//return mav;
	    System.out.println("company form");
		model.addAttribute("tech",technology);
    System.out.println("company form");
	model.addAttribute("tech",technology);
	System.out.println("company form");
	return "search";
}


@RequestMapping(value="/searchValidate",method=RequestMethod.GET)
public ModelAndView searchTechnology(@ModelAttribute("tech") @Validated Technology technology) throws SQLException, ClassNotFoundException {
	// TODO Auto-generated method stub
	  ModelAndView mav = null;
	  System.out.println(technology.getName());
	Class.forName("com.mysql.jdbc.Driver");
	// TODO Auto-generated method stub
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mentor","root","root");
	PreparedStatement ps=con.prepareStatement("select name,start_time from technology where name=? and start_time=?");

	ps.setString(1,technology.getName());
	ps.setString(2,technology.getStart_time());
	
	
	ResultSet rs=ps.executeQuery();
	System.out.println("tech time");
	if(rs.next()) {
	
	System.out.println("tech time");
	 mav = new ModelAndView("techSearch");
	 return mav;
	}
	
	
	else {
	
		System.out.println("tech time");
		 mav = new ModelAndView("techSearch");
	return mav;
}
}










@RequestMapping("/techUpdate")
public ModelAndView techUpdation(@RequestParam("id") int id, ModelMap map, HttpServletRequest request,
              @ModelAttribute("tech") Technology technology,HttpSession session) throws ClassNotFoundException, SQLException {
       ModelAndView mav = null;
                    technology = technologyService.fetchStockUpdate(id);
                  

               	 ArrayList mentorDetails =(ArrayList) mentorService.getMentorList();
               	    map.addAttribute("mentorList",mentorDetails);
                 
              map.addAttribute("update", technology);
              mav = new ModelAndView("techUpdate");
              return mav;
       
}
		
@RequestMapping(value = "/editTech", method = RequestMethod.POST)
public ModelAndView editTechnology(HttpServletRequest request, ModelMap map, HttpSession session,
       @ModelAttribute("tech") Technology technology, BindingResult result) throws ClassNotFoundException, SQLException
              {

       ModelAndView mav = null;
              ArrayList techDetails = null;
              int id= technology.getId();
              if (result.hasErrors()) {
                    Technology t1 = new Technology();
                    t1= technologyService.fetchStockUpdate(id);
                    map.addAttribute("update",t1);
                    mav = new ModelAndView("techUpdate");
                    return mav;
              }
                technologyService.editTechnology(technology);
                //System.out.println(company.getCompanyName());
                techDetails = (ArrayList) technologyService.getTechnologyList();
              map.addAttribute("updateCompany", techDetails);
              mav = new ModelAndView("manageTech");
              return mav;
       
}

@RequestMapping("/techDelete")
public String deleteTechnology(@RequestParam("id") int id, ModelMap map, HttpServletRequest request,
 @ModelAttribute("tech") Technology technology,HttpSession session) throws ClassNotFoundException, SQLException {
ModelAndView mav = null;
technology= technologyService.fetchStockUpdate(id);
technologyService.deleteTechnology(technology);
//mav = new ModelAndView("updateCompany");
return "manageTech";
}


}
