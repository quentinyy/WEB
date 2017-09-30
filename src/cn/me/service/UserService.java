package cn.me.service;

import java.sql.SQLException;
import java.util.List;

import cn.me.dao.UserDao;
import cn.me.domain.User;
/**
 * 用户service
 * @author yq
 *
 */
public class UserService {
	/**
	 * 注册 
	 * @param user
	 * @return
	 */
	public boolean regist(User user) {
		UserDao userDao = new UserDao();
		int row=0;
		try {
			row = userDao.regist(user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row>0?true:false;
	}
	/**
	 * 邮件激活
	 * @param code
	 * @return
	 */
	public boolean active(String code) {
		UserDao userDao = new UserDao();
		int row=0;
		try {
			row = userDao.active(code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row>0?true:false;
	}
	public boolean checkUser(String username) {
		UserDao userDao = new  UserDao();
		boolean rs=false;
		try {
			rs = userDao.checkUser(username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public User login(String username, String password) {
		UserDao userDao = new  UserDao();
		User user = null;
		try {
			user = userDao.login(username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	public List<User> allUser() {
		UserDao userDao = new  UserDao();
		List<User> userlist = null;
		try {
			userlist = userDao.allUser();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userlist;
	}

}
