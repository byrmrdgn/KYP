package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class Page {

    public Page (){
        PageFactory.initElements(Driver.getDriver(),this);
    }
    @FindBy (xpath = "//*[.='Üye Ol']")
    public WebElement uyeolLinki;

    @FindBy (xpath = "//input[@value='Devam']")
    public WebElement devamButonu;

    @FindBy (xpath = "//*[.='Ad alanı 2 ile 30 karakter arasında olmalı!']" )
    public WebElement adKutusuAltindakiUyari;

    @FindBy (name = "firstname")
    public WebElement etuniminLaatikko;

    @FindBy (name = "lastname")
    public WebElement sukuniminLaatikko;

    @FindBy (name = "email")
    public WebElement emailKutusu;

    @FindBy(name = "password")
    public WebElement salasananLaatikko;

    @FindBy(name = "confirm")
    public WebElement sifreTekrarKutusu;
}
