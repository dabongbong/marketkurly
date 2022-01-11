package com.kurly.marketkurly.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class GetTime {
	
	public String currentTime() {
		Date date_now  = new Date(System.currentTimeMillis());
		// 년월일시분초 14자리 포멧
		SimpleDateFormat time = new SimpleDateFormat("yyyyMMddHHmmss"); 
		String timeFormat = time.format(date_now); // 14자리 포멧으로 출력한다
		return timeFormat;
	}
	
	public String calTime() {
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyyMMddHHmmss");
		Calendar time = Calendar.getInstance();
		String format_time = format1.format(time.getTime());
		return format_time;
	}
}
