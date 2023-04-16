package com.springweb02.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springweb02.dao.UserDao;
import com.springweb02.dto.UserEntity;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;

	public int saveUsr(UserEntity user) {
		int i = this.userDao.saveUser(user);
		return i;
	}
	public UserEntity getUser(int id) {
		this.userDao.getUser(id);
		return null;
	}
	public UserEntity findUser(String email,String pwd) {
		List<UserEntity> list = this.userDao.getAllUser();
		for(UserEntity user:list) {
			if(user.getEmail().equals(email) && user.getPwd().equals(pwd))
				return user;
		}
		return null;
	}
}
