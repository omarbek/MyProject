package com.greetgo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.greetgo.beans.ServiceLocator;
import com.greetgo.entities.Test;

@WebServlet("/AjaxController")
public class AjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected ServiceLocator serviceLocator;
	
    public AjaxController() {
        super();
       
        serviceLocator = new ServiceLocator();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Test> tests = serviceLocator.getTestBean().getAllTests();
		PrintWriter out=response.getWriter();
		for(Test t:tests){
			out.print(t.getText());
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
