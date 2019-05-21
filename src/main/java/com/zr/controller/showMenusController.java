package com.zr.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.service.ShowMenuService;

public class showMenusController  extends HttpServlet{
    ShowMenuService  ss = new ShowMenuService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			//	有一个服务提供tree的数据  
		   String tree =  ss.getMenu().toString();
		   resp.setCharacterEncoding("utf8");
		   PrintWriter   pw = resp.getWriter();
		   pw.write(tree);
		   pw.flush();
		   pw.close();
	}
}
