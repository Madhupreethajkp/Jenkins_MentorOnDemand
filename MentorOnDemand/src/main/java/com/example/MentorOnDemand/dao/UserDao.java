package com.example.MentorOnDemand.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MentorOnDemand.model.User;



public interface UserDao  extends JpaRepository<User,Integer>{

	List<User> findByEmail(String email);

}