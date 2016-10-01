package com.atsmxy.xwr.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.atsmxy.xwr.service.ManagersService;
import com.opensymphony.xwork2.ActionSupport;

public class ManagersAction extends ActionSupport implements RequestAware {// ʵ��������ʵ��RequestAware

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;// ��סManagersAction��Ctrl+1,�Զ�����
													// ����������Ǹ�ʲô�õ��أ�

	private ManagersService managersService;

	public void setManagersService(ManagersService managersService) {
		this.managersService = managersService;
	}

	public String list() {
		request.put("managers", managersService.getAll());
		System.out.println("managersActions123------------");
		return "list";
	}

	private int managerID;

	public int getManagerID() {
		return managerID;
	}

	public void setId(int managerID) {
		this.managerID = managerID;
	}

	private InputStream inputStream;

	public InputStream getInputStream() {
		return inputStream;
	}

	public String delete() {
		try {
			managersService.delete(managerID);
			inputStream = new ByteArrayInputStream("ɾ���ɹ���".getBytes("UTF-8"));
			System.out.println("1------------");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				inputStream = new ByteArrayInputStream("ɾ���쳣��".getBytes("UTF-8"));				System.out.println("0------------");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
		// managersService.delete(managerID);
		System.out.println("xxxxxxxxxxxx" + managerID + "xxxxxxxxx " + inputStream);
		return "delete";
	}

	/*
	 * public String delete() { try { employeeService.delete(id); inputStream =
	 * new ByteArrayInputStream("1".getBytes("UTF-8")); } catch (Exception e) {
	 * e.printStackTrace(); try { inputStream = new
	 * ByteArrayInputStream("0".getBytes("UTF-8")); } catch
	 * (UnsupportedEncodingException e1) { e1.printStackTrace(); } } return
	 * "ajax-success"; }
	 */
	private Map<String, Object> request;

	public void setRequest(Map<String, Object> arg0) {// ��סRequestAware��Ctrl+1���ɳ���
		// TODO Auto-generated method stub
		this.request = arg0;
	}

}
