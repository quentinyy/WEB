package cn.me.service;

import java.sql.SQLException;

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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return row>0?true:false;
	}

}
