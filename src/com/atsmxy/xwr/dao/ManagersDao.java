package com.atsmxy.xwr.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.atsmxy.xwr.beans.Managers;

public class ManagersDao extends BaseDao {// 继承BaseDao,因为获取session的方法都一样，如下注释部分

	/*
	 * private SessionFactory sessionFactory;
	 * 
	 * 
	 * public void setSessionFactory(SessionFactory sessionFactory) {
	 * this.sessionFactory = sessionFactory; }
	 * 
	 * public Session getSession(){ return
	 * this.sessionFactory.getCurrentSession(); }
	 */
	
	public void delete(int managerID){
		String hql="DELETE FROM Managers e WHERE e.managerID= ? ";
		getSession().createQuery(hql).setInteger(0, managerID).executeUpdate();
	}

	public List<Managers> getAll() {
		String hql = "FROM Managers";// Managers对应的是实体类，而不是表
		System.out.println("managersDao123-------------------");
		return getSession().createQuery(hql).list();
	}
}
