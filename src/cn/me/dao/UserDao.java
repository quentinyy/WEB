package cn.me.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

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



}
