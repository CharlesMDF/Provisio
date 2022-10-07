package dbBeans;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class HolidayBean {
	
	public int getHolidaycount(Date start, Date end) {
		int holidayCount = 0;
		
		int startYear = start.getYear() + 1900;
		int endYear = end.getYear() + 1900;
		
		int yearDiff = endYear - startYear;
		
		try {
			for(int i = 0; i <= yearDiff; i++) {
				Date newYears = newYears(startYear + i);
				Date mlkDay = mlkDay(startYear  + i);
				Date presidentsDay = presidentsDay(startYear + i);
				Date memorialDay = memorialDay(startYear + i);
				Date juneteenth = juneteenth(startYear + i);
				Date fourthOfJuly = fourthOfJuly(startYear + i);
				Date laborDay = laborDay(startYear + i);
				Date columbusDay = columbusDay(startYear + i);
				Date halloween = halloween(startYear + i);
				Date veteransDay = veteransDay(startYear + i);
				Date thanksgiving = thanksgiving(startYear + i);
				Date christmas = christmas(startYear + i);
				
				if(start.compareTo(newYears) <= 0 && end.compareTo(newYears) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(mlkDay) <= 0 && end.compareTo(mlkDay) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(presidentsDay) <= 0 && end.compareTo(presidentsDay) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(memorialDay) <= 0 && end.compareTo(memorialDay) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(juneteenth) <= 0 && end.compareTo(juneteenth) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(fourthOfJuly) <= 0 && end.compareTo(fourthOfJuly) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(laborDay) <= 0 && end.compareTo(laborDay) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(columbusDay) <= 0 && end.compareTo(columbusDay) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(halloween) <= 0 && end.compareTo(halloween) > 0 ){
					holidayCount++;
				}
				if(start.compareTo(veteransDay) <= 0 && end.compareTo(veteransDay) > 0 ){
					holidayCount++;
				}
				System.out.println(thanksgiving);
				if(start.compareTo(thanksgiving) <= 0 && end.compareTo(thanksgiving) > 0 ){
					holidayCount++;
				}
				
				if(start.compareTo(christmas) <= 0 && end.compareTo(christmas) > 0 ){
					holidayCount++;
				}
			}
			
		} catch(ParseException e){
			System.out.print(e);
		}
		
		return holidayCount;
	}
	
	private static Date newYears(int year) throws ParseException {		
		String newYears = String.format("%d-01-01",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(newYears);
	}
	
	private static Date mlkDay(int year) throws ParseException {
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
	
	private static Date presidentsDay(int year) throws ParseException {
		String firstOfFebuary = String.format("%d-02-01",year);
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
	
	private static Date memorialDay(int year) throws ParseException {
		String firstOfMay = String.format("%d-05-01",year);
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
	
	private static Date juneteenth(int year) throws ParseException {		
		String juneteenth = String.format("%d-06-19",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(juneteenth);
	}
	
	private static Date fourthOfJuly(int year) throws ParseException {		
		String fourthOfJuly = String.format("%d-07-04",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(fourthOfJuly);
	}
	
	private static Date laborDay(int year) throws ParseException {
		String firstOfSeptember = String.format("%d-09-01",year);
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
	private static Date columbusDay(int year) throws ParseException {
		String firstOfOctober = String.format("%d-10-01",year);
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
	
	private static Date halloween(int year) throws ParseException {		
		String veteransDay = String.format("%d-10-31",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(veteransDay);
	}
	
	private static Date veteransDay(int year) throws ParseException {		
		String veteransDay = String.format("%d-11-11",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(veteransDay);
	}
	
	private static Date thanksgiving(int year) throws ParseException {
		String firstOfNovember = String.format("%d-11-01",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		switch(format.parse(firstOfNovember).getDay()) {
			case 0 : // Sunday
	        	return format.parse(year + "-11-26");
	        case 1 : // Monday
	        	return format.parse(year + "-11-25");
	        case 2 : // Tuesday
	        	return format.parse(year + "-11-24");
	        case 3 : // Wednesday
	        	return format.parse(year + "-11-23");
	        case 4 : // Thursday
	        	return format.parse(year + "-11-22");
	        case 5 : // Friday
	        	return format.parse(year + "-11-28");
	        default : // Saturday
	        	return format.parse(year + "-11-27");
		}
	}
	
	private static Date christmas(int year) throws ParseException {		
		String christmas = String.format("%d-12-25",year);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.parse(christmas);
	}
}
