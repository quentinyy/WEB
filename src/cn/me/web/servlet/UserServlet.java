package cn.me.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.security.GeneralSecurityException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;
import com.sun.org.apache.bcel.internal.classfile.PMGClass;
import com.sun.org.apache.bcel.internal.generic.GOTO;

import cn.me.domain.PageBean;
import cn.me.domain.User;
import cn.me.service.UserService;
import cn.me.utils.JedisPoolUtils;
import cn.me.utils.MailUtils;
import redis.clients.jedis.Jedis;

public class UserServlet extends BaseServlet{
	public void active(HttpServletRequest request, HttpServletResponse response)
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
	public void checkuser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/**
		 * 检查用户是否存在
		 */
		String username = request.getParameter("username");
		UserService userService = new UserService();
		//查询到存在rs为true
		boolean rs = userService.checkUser(username);
		if(rs) {
			response.getWriter().write("false");
		}else {
			response.getWriter().write("true");
		}
	}
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/**
		 * 登陆
		 */
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserService userService = new UserService();
		User user = userService.login(username,password);
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		response.sendRedirect(this.getServletContext().getContextPath()+"/user?method=userPage");
	}
	public void signout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/**
		 * 退出
		 */
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.removeAttribute("pageBean");
		response.sendRedirect(this.getServletContext().getContextPath()+"/login.jsp");
	}
	public void userPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr==null)currentPageStr="1";
		String pageSizeStr = "7";
		int currentPage = Integer.parseInt(currentPageStr);
		int pageSize = Integer.parseInt(pageSizeStr);
		UserService userService = new UserService();
		PageBean<User> pageBean = userService.makePageBean(currentPage,pageSize);
		HttpSession session = request.getSession();
		session.setAttribute("pageBean", pageBean);
		response.sendRedirect(this.getServletContext().getContextPath()+"/p/userlist.jsp");
	}
	public void allUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/**
		 * 
		 */
		HttpSession session = request.getSession();
		UserService userService = new UserService();
		List<User> userlist =null;
		Gson gson = new Gson();
		
		try {
			Jedis jedis = JedisPoolUtils.getJedis();
			String users = jedis.get("userlist");
			if(users==null) {
				userlist = userService.allUser();
				String json = gson.toJson(userlist);
				jedis.set("userlist", json);
				response.setContentType("application/json");
				response.getWriter().write(json);
			}else {
				response.setContentType("application/json");
				response.getWriter().write(users);
				userlist = userService.allUser();
				String json = gson.toJson(userlist);
				jedis.set("userlist", json);
			}
		} catch (Exception e) {
			userlist = userService.allUser();
			String json = gson.toJson(userlist);
			response.setContentType("application/json");
			response.getWriter().write(json);
		}
		
	}
	
	public void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取表单内容
		Map<String, String[]> parameterMap = request.getParameterMap();
		//将表单封装成User
		User user = new User();
		try {
			BeanUtils.copyProperties(user, parameterMap);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		//设置UID
		user.setUid(UUID.randomUUID().toString());
		user.setCode(UUID.randomUUID().toString());
		//调用注册
		UserService userService = new UserService();
		boolean isRegisterSucess = userService.regist(user);
		if(isRegisterSucess) {
			try {
				
				MailUtils.sendMail(user.getEmail(), "这是一封激活邮件，点击链接激活<a href='"+request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+this.getServletContext().getContextPath()+"/user?method=active&code="+user.getCode()+"'>"
						+request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+this.getServletContext().getContextPath()+"/user?method=active&code="+user.getCode()+"</a>");
			} catch (AddressException e) {
				e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
			} catch (GeneralSecurityException e) {
				e.printStackTrace();
			}
			response.getWriter().write("<h1>regisetr sucess</h1>");
		}else {
			
		}
	}

}
