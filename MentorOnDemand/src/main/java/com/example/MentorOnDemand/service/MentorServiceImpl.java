package com.example.MentorOnDemand.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MentorOnDemand.dao.MentorDao;
import com.example.MentorOnDemand.model.Mentor;

@Service
public class MentorServiceImpl implements MentorService{
@Autowired
MentorDao mentorDao;

@Override
public void insertMentor(Mentor mentor) {
	// TODO Auto-generated method stub
	 mentorDao.save(mentor);
	
}

@Override
public Object getMentorList() {
	// TODO Auto-generated method stub
	return mentorDao.findAll();
}


public void editMentor(Mentor mentor) {
	// TODO Auto-generated method stub
	mentorDao.save(mentor);
}

@Override
public Mentor fetchStockUpdate(int mentor_id) {
	// TODO Auto-generated method stub
	return mentorDao.getOne(mentor_id);
}

@Override
public Object getMentor() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Object getMentList() {
	// TODO Auto-generated method stub
	return mentorDao.findAll();
}
}
