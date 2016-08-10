package com.nie.test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nie.test.userbean.UserBean;

import sun.net.util.IPAddressUtil;

public class TestServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		/*PrintWriter pw=resp.getWriter();
		pw.println("<html>"+"<body>"+"sd"+"</body>"+"</html>");*/
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
//		String init_param=this.getInitParameter("name");
//		PrintWriter out=resp.getWriter();
//		   out.println("Hello,聂.");
//		   out.print(req.getLocalAddr()+"\r\n");
//		   out.print(init_param);
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.service(req, res);
		req.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		String account=req.getParameter("account");
		String name=req.getParameter("name");
		String gender=req.getParameter("gender");
		String[] interest=req.getParameterValues("interest");
		String msg=req.getParameter("msg");
		
		UserBean user=new UserBean();
		user.setAccount(account);
		user.setName(name);
		user.setGender(gender);
		user.setInterest(interest);
		user.setMsg(msg);
		
		req.setAttribute("userlist", user);
		req.getRequestDispatcher("/jsp/MyJsp1.jsp").forward(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		super.doPost(req, resp);
	}
}
