package com.atsmxy.xwr.dao;

import java.util.List;

import com.atsmxy.xwr.beans.Users;

public class UsersDao extends BaseDao {

	public List<Users> getAll(){
		String hql="FROM Users";//User��Ӧ����ʵ���࣬�����Ǳ�
		System.out.println("UserDao123-------------------");
		return getSession().createQuery(hql).list();
	}

}
