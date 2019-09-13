package com.example.MentorOnDemand.service;

import java.util.List;

import com.example.MentorOnDemand.model.User;

public interface UserService {

public	void insertUser(User user);

public List<User> findByEmail(String email);

public Object getUserList();


}
