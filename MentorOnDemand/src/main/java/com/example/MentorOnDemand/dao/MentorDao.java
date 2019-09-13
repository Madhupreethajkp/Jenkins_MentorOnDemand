package com.example.MentorOnDemand.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MentorOnDemand.model.Mentor;


public interface MentorDao extends JpaRepository<Mentor,Integer> {

	

}
