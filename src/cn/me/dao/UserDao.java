package cn.me.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

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
		int row = queryRunner.update("insert into user(uid,username,password,email) values(?,?,?,?)",user.getUid(),user.getUsername(),user.getPassword(),user.getEmail());
		return row;
	}

}
