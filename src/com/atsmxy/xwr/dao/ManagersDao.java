package com.atsmxy.xwr.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.atsmxy.xwr.beans.Managers;

public class ManagersDao extends BaseDao {// �̳�BaseDao,��Ϊ��ȡsession�ķ�����һ��������ע�Ͳ���

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
		String hql = "FROM Managers";// Managers��Ӧ����ʵ���࣬�����Ǳ�
		System.out.println("managersDao123-------------------");
		return getSession().createQuery(hql).list();
	}
}
