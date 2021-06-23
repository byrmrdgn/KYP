package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"html:target/default-cucumber-reports"},
        features = "src/test/resources/features",
        glue = "stepdefinitions",
        tags ="@sifresizGirisIslemi",
        dryRun = false
)
public class Runner {
}
