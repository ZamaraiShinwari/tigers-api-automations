package tiger.api.test.data;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	@Karate.Test
	public Karate runTest() {
		return Karate.run("classpath:feature")
				.tags("security");
	}

}
