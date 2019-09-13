package com.example.MentorOnDemand.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MentorOnDemand.model.Training;

public interface TrainingDao  extends JpaRepository<Training,Integer> {

}
