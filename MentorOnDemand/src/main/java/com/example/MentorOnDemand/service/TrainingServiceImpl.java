package com.example.MentorOnDemand.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MentorOnDemand.dao.TrainingDao;
import com.example.MentorOnDemand.model.Technology;
import com.example.MentorOnDemand.model.Training;

@Service

public class TrainingServiceImpl implements TrainingService{
@Autowired
TrainingDao trainingDao;

@Override
public void insertTraining(Training training) {
	// TODO Auto-generated method stub
	trainingDao.save(training);
}

@Override
public Object getRequestList() {
	// TODO Auto-generated method stub
	return trainingDao.findAll();
}

@Override
public Optional<Training> getTrainingById(int training_id) {
	// TODO Auto-generated method stub
	return trainingDao.findById(training_id);
}

@Override
public void updateAccept(Training training) {
	// TODO Auto-generated method stub
	trainingDao.save(training);
	
}

@Override
public Object getAcceptedList() {
	// TODO Auto-generated method stub
	return trainingDao.findAll();
}

@Override
public Training fetchStockUpdate(int training_id) {
	// TODO Auto-generated method stub
	return trainingDao.getOne(training_id);
}

@Override
public void rejectRequest(Training training) {
	// TODO Auto-generated method stub
	 trainingDao.delete(training);
	
}

@Override
public Object getFinalList() {
	// TODO Auto-generated method stub
	return trainingDao.findAll();
}



}
