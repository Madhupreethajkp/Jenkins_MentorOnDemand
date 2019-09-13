package com.example.MentorOnDemand.service;

import java.util.List;

import com.example.MentorOnDemand.model.Technology;

public interface TechnologyService {

	void insertTechnology(Technology technology);

	Object getTechnology();

	Object getTechnologyList();

	Object getTechnologyById(int id);

	Technology fetchStockUpdate(int id);

	void editTechnology(Technology technology);

	void deleteTechnology(Technology technology);

	//List<Technology> findById(int id);

	
}
