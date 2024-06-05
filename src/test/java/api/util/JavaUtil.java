package api.util;

import java.time.Instant;
import java.time.LocalDate;

public class JavaUtil {
	
	public static String getTodaysDate() {
		return LocalDate.now().toString();
	}
	
	public String getTodaysDateTime() {
		return Instant.now().toString();
	}
}
