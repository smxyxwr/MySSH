package com.atsmxy.xwr.service;

import java.util.List;
import com.atsmxy.xwr.beans.Users;
import com.atsmxy.xwr.dao.UsersDao;

public class UsersService {
	private UsersDao usersDao;

	
	public UsersDao getUsersDao() {
		return usersDao;
	}


	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}


	public List<Users> getAll(){
		System.out.println("usersServicelist123");
		return usersDao.getAll();
	}

}
