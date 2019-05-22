package com.scf.news.bao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.scf.login.servlet.utils.C3P0Util;
import com.scf.news.bean.News;
import com.scf.news.bean.Notice;

public class NoticeDao {
	public boolean saveNotice(Notice notice) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "insert into notice values (?,?,?)";
		int i = runner.update(sql,notice.getId(),notice.getNtitle(),notice.getNcontext());
		if (i==1) {
			return true;
		}else {
			return false;
		}
		
	}
	public boolean deleteNoticeByPid(String id) throws SQLException {
		QueryRunner runner =new QueryRunner(C3P0Util.getDataSource());
		String sql ="delete from notice where id=?";
		int i = runner.update(sql, id);
		if (i==1) {
			//ɾ���ɹ�
			return true;
			
		}else {
			return false;
		}
	}
	
	public boolean updateNotice(Notice notice) {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "update notice set ntitle=?, ncontext=? where id=?";
		int i=0;
		try {
			i = runner.update(sql,notice.getNtitle(),notice.getNcontext(),notice.getId());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (i == 1) {
			return true;
		}else {
			return false;
		}
	}
	public List<Notice> findAllNotice() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "select * from notice";
		List<Notice> list = runner.query(sql, new BeanListHandler<>(Notice.class));
		return list;
	}

}
