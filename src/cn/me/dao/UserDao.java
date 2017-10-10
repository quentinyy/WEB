package cn.me.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.sun.xml.internal.bind.v2.runtime.MarshallerImpl;

import cn.me.domain.User;
import cn.me.utils.DataSourceUtils;
/**
 * 用户dao
 * @author yq
 *
 */
public interface UserDao {
	/**
	 * 注册将user插入数据库
	 * @param user
	 * @return
	 * @throws SQLException
	 */
	public int regist(User user) throws SQLException ;
	/**
	 * 邮件激活
	 * @param code
	 * @return
	 * @throws SQLException
	 */
	public int active(String code) throws SQLException ;
	public boolean checkUser(String username) throws SQLException ;
	public User login(String username, String password) throws SQLException ;
	public List<User> allUser() throws SQLException ;
	public List<User> getUserLimit(int currentPage, int pageSize) throws SQLException ;
	public int getCountUser() throws SQLException ;

}
