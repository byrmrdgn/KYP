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
    public WebElement adKutusu;

    @FindBy (name = "lastname")
    public WebElement soyadKutusu;

    @FindBy (name = "email")
    public WebElement emailKutusu;

    @FindBy(name = "password")
    public WebElement sifreKutusu;

    @FindBy(name = "confirm")
    public WebElement sifreTekrarKutusu;

    @FindBy(xpath = "//input[@name='agree']")
    public WebElement kisiVerilerininKorunmasi;

    @FindBy(xpath = "//a[.='Giriş Yap']")
    public WebElement girisYapLinki;

    @FindBy(xpath = "//button[@role='button']")
    public WebElement girisYapButonu;

    @FindBy(partialLinkText = "Şifremi Unuttum")
    public WebElement sifremiUnuttum;

    @FindBy(xpath = "//*[@id=\"login\"]/div[2]/i")
    public WebElement gözSimgesi;

    @FindBy(className = "ky-checkbox-input")
    public WebElement beniHatirla;


}
