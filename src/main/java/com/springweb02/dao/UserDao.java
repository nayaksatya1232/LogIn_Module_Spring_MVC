package com.springweb02.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springweb02.dto.UserEntity;
@Repository
public class UserDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public int saveUser(UserEntity user) {
		int i = (Integer) this.hibernateTemplate.save(user);
		return i;
	}
	public UserEntity getUser(int id) {
		UserEntity entity =this.hibernateTemplate.get(UserEntity.class,id);
		return entity;
	}
	public List<UserEntity> getAllUser(){
		List<UserEntity> list = this.hibernateTemplate.loadAll(UserEntity.class);
		return list;
	}
}
