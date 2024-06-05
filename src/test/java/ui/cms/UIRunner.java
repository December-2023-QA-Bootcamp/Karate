package ui.cms;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class UIRunner {

	@Test
	Karate test() {
		return Karate.run("cms_ui")
				.tags("@msedge")
				.relativeTo(getClass());
	}
	
}
