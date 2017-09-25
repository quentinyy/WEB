package cn.me.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.me.domain.User;
import cn.me.service.UserService;
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//设置UID
		user.setUid(UUID.randomUUID().toString());
		//调用注册
		UserService userService = new UserService();
		boolean isRegisterSucess = userService.regist(user);
		if(isRegisterSucess) {
			
		}else {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}