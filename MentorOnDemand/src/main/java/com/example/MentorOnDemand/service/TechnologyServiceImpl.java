package com.example.MentorOnDemand.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MentorOnDemand.dao.TechnologyDao;
import com.example.MentorOnDemand.model.Technology;
import com.example.MentorOnDemand.model.Training;

@Service
public class TechnologyServiceImpl implements TechnologyService {

	@Autowired
	TechnologyDao technologyDao;
	
	
	@Override
	public void insertTechnology(Technology technology) {
		// TODO Auto-generated method stub
		technologyDao.save(technology);
	}


	@Override
	public Object getTechnology() {
		// TODO Auto-generated method stub
		return technologyDao.findAll();
	}


	@Override
	public Object getTechnologyList() {
		// TODO Auto-generated method stub
		return technologyDao.findAll();
	}


	@Override
	public Technology getTechnologyById(int id) {
		// TODO Auto-generated method stub
		return technologyDao.findById(id);
	}


	@Override
	public Technology fetchStockUpdate(int id) {
		// TODO Auto-generated method stub
		return technologyDao.getOne(id);
	}


	@Override
	public void editTechnology(Technology technology) {
		// TODO Auto-generated method stub
		technologyDao.save(technology);
		
	}


	@Override
	public void deleteTechnology(Technology technology) {
		// TODO Auto-generated method stub
		technologyDao.delete(technology);
		
	}


	

	
	
}
