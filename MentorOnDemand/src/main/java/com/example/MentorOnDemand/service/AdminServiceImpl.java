package com.example.MentorOnDemand.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MentorOnDemand.dao.AdminDao;

@Service
public class AdminServiceImpl implements AdminService{
@Autowired
AdminDao adminDao;
}
