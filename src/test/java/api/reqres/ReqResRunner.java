package api.reqres;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class ReqResRunner {

	@Test
	Karate run() {
		return Karate.run("getAUser")
				.tags("@get-user-api, ~@exclude")
				.relativeTo(getClass());
	}
}
