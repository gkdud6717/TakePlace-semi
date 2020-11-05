package com.kh.jsp.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.jsp.common.exception.MemberException;
import com.kh.jsp.member.model.service.MemberService;
import com.kh.jsp.member.model.vo.Member;

/**
 * Servlet implementation class insertHost
 */
@WebServlet("/insertH.me")
public class insertHost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertHost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("hostid");
		String mName = request.getParameter("companyName");
		String pwd = request.getParameter("hostpwd");
		String mType = request.getParameter("mType");
		String email = request.getParameter("hostEmail");
		String bsNum = request.getParameter("companyNo");
		String bsName = request.getParameter("bsName");

		Member m = new Member(id, mName, pwd, mType, email, bsNum, bsName);

		System.out.println("가입 정보 확인 : " + m);
		
		MemberService ms = new MemberService();
		
		try {
			ms.insertHost(m);
			
			System.out.println("회원 가입 성공!");
			response.sendRedirect("index.jsp");
			
		} catch (MemberException e) {
			System.out.println("회원 가입 실패!");
			RequestDispatcher view
			   = request.getRequestDispatcher("views/common/errorPage.jsp");
			
			request.setAttribute("error-msg", "회원 가입 실패");
			request.setAttribute("exception", e);
			
			view.forward(request, response);
		}
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
