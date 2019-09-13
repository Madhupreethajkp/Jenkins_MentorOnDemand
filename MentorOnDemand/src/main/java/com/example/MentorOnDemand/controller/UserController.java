package com.example.MentorOnDemand.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import com.example.MentorOnDemand.model.User;

public interface UserController {

	String index();

	String insertUser(User user) throws SQLException;



	



	String validateUser(User u) throws Exception;

	ModelAndView getUserList() throws SQLException;

}
