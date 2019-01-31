package poly.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateUtil {
	public static String DateFormat(String date) throws ParseException {
//오라클
	/*	Date date1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
		String newstring = new SimpleDateFormat("yyyy-MM-dd").format(date1);
		return newstring;
	*/
		SimpleDateFormat formatter = new SimpleDateFormat(date, Locale.KOREA);
		Date currentTime = new Date();
		String res = formatter.format(currentTime);

		return res;
		
	}
	
	public static String DateFormatter(String date) throws ParseException{
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.KOREA);
		Date d=formatter.parse(date);
		System.out.println(d);
		SimpleDateFormat targetDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String e = targetDateFormat.format(d);
		System.out.println(e);
		return e;
	}
	

}