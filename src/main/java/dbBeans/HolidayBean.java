package dbBeans;

import java.util.Date;
import java.util.Calendar;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class HolidayBean {
	
	public static int getHolidaycount(Date start, Date end) {
		int holidayCount = 0;
		
		
		return holidayCount;
	}
	
	private Date newYears(String year) throws ParseException {		
		String newYears = String.format("%s-01-01",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(newYears);
	}
	
	private Date mlkDay(String year) throws ParseException {
		Date newYears = newYears(year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		switch(newYears.getDay()) {
			case 0 : // Sunday
	        	return format.parse(year + "-01-16");
	        case 1 : // Monday
	        	return format.parse(year + "-01-15");
	        case 2 : // Tuesday
	        	return format.parse(year + "-01-21");
	        case 3 : // Wednesday
	        	return format.parse(year + "-01-20");
	        case 4 : // Thursday
	        	return format.parse(year + "-01-19");
	        case 5 : // Friday
	        	return format.parse(year + "-01-18");
	        default : // Saturday
	        	return format.parse(year + "-01-17");
		}
	}
	
	private Date presidentsDay(String year) throws ParseException {
		String firstOfFebuary = String.format("%s-02-01",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		switch(format.parse(firstOfFebuary).getDay()) {
			case 0 : // Sunday
	        	return format.parse(year + "-02-16");
	        case 1 : // Monday
	        	return format.parse(year + "-02-15");
	        case 2 : // Tuesday
	        	return format.parse(year + "-02-21");
	        case 3 : // Wednesday
	        	return format.parse(year + "-02-20");
	        case 4 : // Thursday
	        	return format.parse(year + "-02-19");
	        case 5 : // Friday
	        	return format.parse(year + "-02-18");
	        default : // Saturday
	        	return format.parse(year + "-02-17");
		}
	}
	
	private Date memorialDay(String year) throws ParseException {
		String firstOfMay = String.format("%s-05-01",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		switch(format.parse(firstOfMay).getDay()) {
			case 0 : // Sunday
	        	return format.parse(year + "-05-30");
	        case 1 : // Monday
	        	return format.parse(year + "-05-29");
	        case 2 : // Tuesday
	        	return format.parse(year + "-05-28");
	        case 3 : // Wednesday
	        	return format.parse(year + "-05-27");
	        case 4 : // Thursday
	        	return format.parse(year + "-05-26");
	        case 5 : // Friday
	        	return format.parse(year + "-05-25");
	        default : // Saturday
	        	return format.parse(year + "-05-31");
		}
	}
	
	private Date juneteenth(String year) throws ParseException {		
		String juneteenth = String.format("%s-06-19",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(juneteenth);
	}
	
	private Date fourthOfJuly(String year) throws ParseException {		
		String fourthOfJuly = String.format("%s-07-04",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(fourthOfJuly);
	}
	
	private Date laborDay(String year) throws ParseException {
		String firstOfSeptember = String.format("%s-09-01",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		switch(format.parse(firstOfSeptember).getDay()) {
			case 0 : // Sunday
	        	return format.parse(year + "-09-07");
	        case 1 : // Monday
	        	return format.parse(year + "-09-01");
	        case 2 : // Tuesday
	        	return format.parse(year + "-09-02");
	        case 3 : // Wednesday
	        	return format.parse(year + "-09-03");
	        case 4 : // Thursday
	        	return format.parse(year + "-09-04");
	        case 5 : // Friday
	        	return format.parse(year + "-09-05");
	        default : // Saturday
	        	return format.parse(year + "-09-06");
		}
	}
	private Date columbusDay(String year) throws ParseException {
		String firstOfOctober = String.format("%s-10-01",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		switch(format.parse(firstOfOctober).getDay()) {
			case 0 : // Sunday
	        	return format.parse(year + "-10-09");
	        case 1 : // Monday
	        	return format.parse(year + "-10-08");
	        case 2 : // Tuesday
	        	return format.parse(year + "-10-14");
	        case 3 : // Wednesday
	        	return format.parse(year + "-10-13");
	        case 4 : // Thursday
	        	return format.parse(year + "-10-12");
	        case 5 : // Friday
	        	return format.parse(year + "-10-11");
	        default : // Saturday
	        	return format.parse(year + "-10-10");
		}
	}
	
	private Date veteransDay(String year) throws ParseException {		
		String veteransDay = String.format("%s-11-11",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(veteransDay);
	}
	
	private Date thanksgiving(String year) throws ParseException {
		String firstOfNovember = String.format("%s-11-01",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		switch(format.parse(firstOfNovember).getDay()) {
			case 0 : // Sunday
	        	return format.parse(year + "-10-26");
	        case 1 : // Monday
	        	return format.parse(year + "-10-25");
	        case 2 : // Tuesday
	        	return format.parse(year + "-10-25");
	        case 3 : // Wednesday
	        	return format.parse(year + "-10-23");
	        case 4 : // Thursday
	        	return format.parse(year + "-10-22");
	        case 5 : // Friday
	        	return format.parse(year + "-10-28");
	        default : // Saturday
	        	return format.parse(year + "-10-27");
		}
	}
	
	private Date christmas(String year) throws ParseException {		
		String christmas = String.format("%s-12-25",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(christmas);
	}
}
