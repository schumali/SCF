package com.scf.news.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static String getCurrentDate() {
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateStr = dateFormat.format(date);
		return dateStr;
		
	}
}
