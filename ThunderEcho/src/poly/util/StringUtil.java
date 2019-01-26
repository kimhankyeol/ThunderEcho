package poly.util;



import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil {
	public static String replaceWordLtGt(String str) {
		String res="";
		str=str.replaceAll("& lt;","&lt;");
		str=str.replaceAll("& gt;","&gt;");
		res = str;
		return res;
	}
	
	public static String replaceRevSlash(String str) {
		String res ="";
		res=str.replaceAll("\\\\", "\\\\\\\\");
		return res;
	}
	
	public static List<String> getImgSrc(String str) {
  		Pattern nonValidPattern = Pattern
  				.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
  		
		List<String> result = new ArrayList<>();
  		Matcher matcher = nonValidPattern.matcher(str);
  		while (matcher.find()) {
  			result.add(matcher.group(1));
  		}
  		
  		return result;
  	}


	
	//파일 이동 클래스
	public static void fileMove(String inFileName,String outFileName) {
		 try {
			   FileInputStream fis = new FileInputStream(inFileName);
			   FileOutputStream fos = new FileOutputStream(outFileName);
			   
			   int data = 0;
			   while((data=fis.read())!=-1) {
			    fos.write(data);
			   }
			   fis.close();
			   fos.close();
			   
			   //복사한뒤 원본파일을 삭제함
			   fileDelete(inFileName);
			   
			  } catch (IOException e) {
			   // TODO Auto-generated catch block
			   e.printStackTrace();
			  }

			
	}
	
	//파일을 삭제하는 메소드
	 public static void fileDelete(String deleteFileName) {
	  File I = new File(deleteFileName);
	  I.delete();
	 }




}
