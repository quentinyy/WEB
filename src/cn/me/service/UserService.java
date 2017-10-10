package cn.me.service;

import java.util.List;

import cn.me.domain.PageBean;
import cn.me.domain.User;
/**
 * 用户service
 * @author yq
 *
 */
public interface UserService {
	/**
	 * 注册 
	 * @param user
	 * @return
	 */
	public boolean regist(User user) ;
	/**
	 * 邮件激活
	 * @param code
	 * @return
	 */
	public boolean active(String code) ;
	public boolean checkUser(String username) ;
	public User login(String username, String password) ;
	public List<User> allUser() ;
	public PageBean<User> makePageBean(int currentPage, int pageSize) ;
}
