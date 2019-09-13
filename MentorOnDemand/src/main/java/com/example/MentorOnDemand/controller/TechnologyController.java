package com.example.MentorOnDemand.controller;

import java.sql.SQLException;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

import com.example.MentorOnDemand.model.Technology;

public interface TechnologyController {

	String insertTechnology(Technology technology) throws SQLException;

	String form(Technology technology, ModelMap model) throws SQLException;

	ModelAndView getTechnology() throws SQLException;

	ModelAndView getTechnologyList() throws SQLException;

	//ModelAndView getTechnologyById() throws SQLException;

	String getTechnologyById(int id) throws SQLException;

	
}
