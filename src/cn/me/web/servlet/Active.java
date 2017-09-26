package cn.me.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.me.service.UserService;

public class Active extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/**
		 * 邮件激活
		 */
		String code = request.getParameter("code");
		UserService userService = new UserService();
		boolean isActiveSuceess = userService.active(code);
		if(isActiveSuceess) {
			request.setCharacterEncoding("utf-8");
			response.getWriter().write("<h1>active sucess</h1>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}