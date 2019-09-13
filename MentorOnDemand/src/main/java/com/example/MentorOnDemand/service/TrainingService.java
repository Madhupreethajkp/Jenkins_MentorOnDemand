package com.example.MentorOnDemand.service;

import java.util.Optional;

import com.example.MentorOnDemand.model.Technology;
import com.example.MentorOnDemand.model.Training;

public interface TrainingService {

	void insertTraining(Training training);

	Object getRequestList();

	Object getTrainingById(int training_id);

	void updateAccept(Training training);

	Object getAcceptedList();

	Training fetchStockUpdate(int training_id);

	void rejectRequest(Training training);

	Object getFinalList();

	

}
