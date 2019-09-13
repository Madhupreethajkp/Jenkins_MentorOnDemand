package com.example.MentorOnDemand.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MentorOnDemand.model.User;

public interface AdminDao extends JpaRepository<User,Integer>{

}
