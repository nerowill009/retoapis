import com.intuit.karate.junit5.Karate;

public class karateRunner {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:REST/user-put.feature");
    }
}