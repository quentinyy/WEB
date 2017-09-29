package cn.me.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.sun.org.apache.bcel.internal.classfile.PMGClass;

import cn.me.domain.User;
import cn.me.service.UserService;
import cn.me.utils.MailUtils;

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
