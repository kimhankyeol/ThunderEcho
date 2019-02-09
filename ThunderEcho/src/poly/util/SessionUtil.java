package poly.util;



import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SessionUtil {
	public static boolean login(String userName) throws ParseException{
		
		if (CmmUtil.nvl(userName).equals("관리자")) {
			return true;
		}else {
			return false;
		}
		
	}
}
