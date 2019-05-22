package com.scf.news.bao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.scf.login.servlet.utils.C3P0Util;
import com.scf.news.bean.Messag;

public class MessagDao {
	public boolean saveMessag(Messag messag) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "insert into message values (?,?,?,?)";
		int i = runner.update(sql,messag.getId(),messag.getName(),messag.getPhone(),messag.getContent());
		if (i==1) {
			return true;
		}else {
			return false;
		}
}

	public boolean deleteMessByPid(String id) throws SQLException {
		QueryRunner runner =new QueryRunner(C3P0Util.getDataSource());
		String sql ="delete from message where id=?";
		int i = runner.update(sql, id);
		if (i==1) {
			//ɾ���ɹ�
			return true;
			
		}else {
			return false;
		}
	}
}