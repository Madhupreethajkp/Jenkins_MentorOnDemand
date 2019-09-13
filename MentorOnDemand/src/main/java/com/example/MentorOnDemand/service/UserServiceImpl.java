package com.example.MentorOnDemand.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MentorOnDemand.dao.UserDao;
import com.example.MentorOnDemand.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
		
		
	}
	@Override
	public List<User> findByEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.findByEmail(email);
	}
	@Override
	public Object getUserList() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}
	

}
