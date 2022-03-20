package com.b2bcs.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserUtil 
{

	public boolean isEmailString(String key)
	{
		boolean isEmail = false;

		if (key.length() >10 || key.contains("@"))
		{
			isEmail = true;
		}
		return isEmail;
	}

	public boolean isMobileString(String key)
	{
		boolean isMobile = false;
		if (key.length() == 10 && !key.matches("^[a-zA-Z]*$"))
		{
			isMobile = true;
		}
		return isMobile;
	}

	public String getMySQLDateFormat(String stringDate)
	{
		SimpleDateFormat sdfmt1 = new SimpleDateFormat("dd-mm-yyyy");
		SimpleDateFormat sdfmt2= new SimpleDateFormat("yyyy-mm-dd");
		java.util.Date dDate = null;
		if (null!= stringDate && !"".equalsIgnoreCase(stringDate))
		{
			try 
			{
				dDate = sdfmt1.parse( stringDate );
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		String dateString = sdfmt2.format( dDate );
		System.out.println("Date of birth Input="+ stringDate);
		System.out.println("Date of birth mysql="+ dateString);
		return dateString;
	}
	public String getCurrentMySQLDateFormat()
	{
		Date now = new Date();
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat formatter = new SimpleDateFormat(pattern);
		String mysqlDateString = formatter.format(now);
		/*    System.out.println("Java's Default Date Format: " + now);
    		  System.out.println("Mysql's Default Date Format: " + mysqlDateString);*/
		return mysqlDateString;
	}
}
