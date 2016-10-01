package com.atsmxy.xwr.actions;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.atsmxy.xwr.service.UsersService;
import com.opensymphony.xwork2.ActionSupport;

public class UsersAction extends ActionSupport implements RequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UsersService usersService = new UsersService();

	
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}


	public String list(){
		request.put("users", usersService.getAll());
		System.out.println("managersActions123------------");
		return "list";
	}
	
	private Map<String ,Object> request;
	
	
	public void setRequest(Map<String, Object> arg0) {//点住RequestAware，Ctrl+1即可出现
		// TODO Auto-generated method stub
		this.request = arg0;
	}

	
}
