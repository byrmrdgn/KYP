package utilities;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class MyMethods {

    public void waitAndIsDisplayed(WebElement element, int n){
        WebDriverWait wait=new WebDriverWait(Driver.getDriver(),n);
        wait.until(ExpectedConditions.visibilityOf(element));
    }
}
