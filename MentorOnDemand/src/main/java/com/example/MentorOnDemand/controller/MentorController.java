package com.example.MentorOnDemand.controller;

import java.sql.SQLException;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

import com.example.MentorOnDemand.model.Mentor;

public interface MentorController {

	String form(Mentor mentor, ModelMap model) throws SQLException;

	ModelAndView getMentorList() throws SQLException;

	ModelAndView getMentor() throws Exception;

}
