package com.scf.news.bao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.scf.login.servlet.utils.C3P0Util;
import com.scf.news.bean.Document;
import com.scf.news.bean.News;

public class DocumentDao {

	public boolean saveDocument(Document document) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "insert into document values (?,?,?,?,?,?)";
		int i = runner.update(sql,document.getId(),document.getDname(),document.getPdesc(),document.getDimage(),document.getDsize(),document.getNdocument());
		if (i==1) {
			return true;
		}else {
			return false;
		}
	}

	public List<Document> findAllFiles() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "select * from document";
		List<Document> list = runner.query(sql, new BeanListHandler<>(Document.class));
		
		return list;
	}

	public boolean updateDocument(Document document) {
		QueryRunner runner = new QueryRunner(C3P0Util.getDataSource());
		String sql = "update document set dname=?, dimage=?, dsize=?, pdesc=?, ndocument=? where id=?";
		int i=0;
		try {
			i = runner.update(sql,document.getDname(),document.getDimage(),document.getDsize(),document.getPdesc(),document.getNdocument(),document.getId());
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

	public boolean deleteDocumentByPid(String id) throws SQLException {
		QueryRunner runner =new QueryRunner(C3P0Util.getDataSource());
		String sql ="delete from document where id=?";
		int i = runner.update(sql, id);
		if (i==1) {
			//ɾ���ɹ�
			return true;
			
		}else {
			return false;
		}
	}

	

}
