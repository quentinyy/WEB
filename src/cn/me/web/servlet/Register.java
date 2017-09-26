package cn.me.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.me.domain.User;
import cn.me.service.UserService;
import cn.me.utils.MailUtils;
/**
 * 注册servlet
 * @author yq
 *
 */
public class Register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
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
				
				MailUtils.sendMail(user.getEmail(), "这是一封激活邮件，点击链接激活<a href='"+request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+this.getServletContext().getContextPath()+"/active?code="+user.getCode()+"'>"
						+request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+this.getServletContext().getContextPath()+"/active?code="+user.getCode()+"</a>");
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}