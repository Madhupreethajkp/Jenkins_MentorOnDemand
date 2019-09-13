package com.example.MentorOnDemand.service;

import com.example.MentorOnDemand.model.Mentor;

public interface MentorService {

	void insertMentor(Mentor mentor);

	Object getMentorList();

	Mentor fetchStockUpdate(int mentor_id);

	void editMentor(Mentor mentor);



	Object getMentor();

	Object getMentList();

}
