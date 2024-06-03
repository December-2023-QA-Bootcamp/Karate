package features;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class ReqResRunner {

	@Test
	Karate run() {
		return Karate.run("demo")
				.tags("@inline-js")
				.relativeTo(getClass());
	}
}
