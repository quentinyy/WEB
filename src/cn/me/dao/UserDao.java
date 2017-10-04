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
public class UserDao {
	/**
	 * 注册将user插入数据库
	 * @param user
	 * @return
	 * @throws SQLException
	 */
	public int regist(User user) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
		int row = queryRunner.update("insert into user(uid,username,password,email,code) values(?,?,?,?,?)",user.getUid(),user.getUsername(),user.getPassword(),user.getEmail(),user.getCode());
		return row;
	}
	/**
	 * 邮件激活
	 * @param code
	 * @return
	 * @throws SQLException
	 */
	public int active(String code) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
		int row = queryRunner.update("update user set state=? where code=?",1,code);
		return row;
	}
	public boolean checkUser(String username) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
		User user = queryRunner.query("select * from user where username=?",new BeanHandler<User>(User.class),username);
		return user!=null?true:false;
	}
	public User login(String username, String password) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
		User user = null; 
		user = queryRunner.query("select * from user where username=? and password=?",new BeanHandler<User>(User.class),username,password);
		return user;
	}
	public List<User> allUser() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
		List<User> userlist = null; 
		userlist = queryRunner.query("select * from user",new BeanListHandler<User>(User.class));
		return userlist;
	}
	public List<User> getUserLimit(int currentPage, int pageSize) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
		List<User> userlist = null; 
		userlist = queryRunner.query("select * from user limit ?,?",new BeanListHandler<User>(User.class),(currentPage-1)*pageSize,pageSize);
		return userlist;
	}
	public int getCountPage(int pageSize) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource()); 
		int countUser = (int)(long) queryRunner.query("select count(*) from user",new ScalarHandler());
		int countPage = (int) Math.ceil(countUser*1.0/pageSize);
		return countPage;
	}

}
