package com.atsmxy.xwr.service;

import java.util.List;

import com.atsmxy.xwr.beans.Managers;
import com.atsmxy.xwr.dao.ManagersDao;

public class ManagersService {

	private ManagersDao managersDao;

	public void setManagersDao(ManagersDao managersDao) {
		this.managersDao = managersDao;
	}

	public ManagersDao getManagersDao() {
		System.out.println("managersService123");
		return managersDao;
	}

	public void delete(int managerID) {
		managersDao.delete(managerID);
	}

	public List<Managers> getAll() {
		return managersDao.getAll();

	}
}
