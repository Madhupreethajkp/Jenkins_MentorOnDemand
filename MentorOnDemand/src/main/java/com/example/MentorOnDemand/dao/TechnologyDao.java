package com.example.MentorOnDemand.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MentorOnDemand.model.Technology;
import com.example.MentorOnDemand.model.Training;


public interface TechnologyDao extends JpaRepository<Technology,Integer> {
	public Technology findById(int id);
}
