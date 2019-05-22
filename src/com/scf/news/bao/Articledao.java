package com.scf.news.bao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.scf.login.servlet.utils.C3P0Util;
import com.scf.news.bean.Article;
import com.scf.news.bean.News;


public class Articledao {
	public boolean saveArticle(Article article) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "insert into article values (?,?,?,?)";
		int i = runner.update(sql,article.getId(),article.getAtitle(),article.getAcontent(),article.getAdate());
		if (i==1) {
			return true;
		}else {
			return false;
		}
		
	}

	public boolean deleteArticleByPid(String id) throws SQLException {
		QueryRunner runner =new QueryRunner(C3P0Util.getDataSource());
		String sql ="delete from article where id=?";
		int i = runner.update(sql, id);
		if (i==1) {
			//ɾ���ɹ�
			return true;
			
		}else {
			return false;
		}
	}

	public boolean updateArticle(Article article) {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "update article set atitle=?, acontent=?, adate=? where id=?";
		int i=0;
		try {
			i = runner.update(sql,article.getAtitle(),article.getAcontent(),article.getAdate(),article.getId());
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

	public List<Article> findAllArticle() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "select * from article";
		List<Article> list = runner.query(sql, new BeanListHandler<>(Article.class));
		return list;
	}

}
