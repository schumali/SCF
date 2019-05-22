package com.scf.news.bao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.scf.login.servlet.utils.C3P0Util;
import com.scf.news.bean.News;
//保持news信息的方法
public class NewsDao {
	public boolean saveNews(News news) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "insert into news values (?,?,?,?)";
		int i = runner.update(sql,news.getId(),news.getNtitle(),news.getNcontent(),news.getNdate());
		if (i==1) {
			return true;
		}else {
			return false;
		}
		
	}

	public boolean deleteNewsByPid(String id) throws SQLException {
		QueryRunner runner =new QueryRunner(C3P0Util.getDataSource());
		String sql ="delete from news where id=?";
		int i = runner.update(sql, id);
		if (i==1) {
			//ɾ���ɹ�
			return true;
			
		}else {
			return false;
		}
	}

	public List<News> findAllNews() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "select * from news";
		List<News> list = runner.query(sql, new BeanListHandler<>(News.class));
		return list;
	}

	public boolean updateNews(News news) {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "update news set ntitle=?, ncontent=?, ndate=? where id=?";
		int i=0;
		try {
			i = runner.update(sql,news.getNtitle(),news.getNcontent(),news.getNdate(),news.getId());
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

}
