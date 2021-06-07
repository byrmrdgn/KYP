package pages;

import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class Page {
    public Page (){
        PageFactory.initElements(Driver.getDriver(),this);
    }
}
