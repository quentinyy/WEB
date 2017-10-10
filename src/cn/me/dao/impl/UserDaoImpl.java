package cn.me.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.me.dao.UserDao;
import cn.me.domain.User;
import cn.me.utils.DataSourceUtils;

public class UserDaoImpl implements UserDao{
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
	public int getCountUser() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource()); 
		int countUser = (int)(long) queryRunner.query("select count(*) from user",new ScalarHandler());
		return countUser;
	}
}
