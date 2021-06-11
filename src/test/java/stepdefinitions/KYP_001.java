package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import pages.Page;
import utilities.ConfigurationReader;
import utilities.Driver;


public class KYP_001 {

    Page page=new Page();
    @Given("kullanici {string} adresine gider")
    public void kullanici_adresine_gider(String string) {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }
    @Given("kullanici uye ol linkine tiklar")
    public void kullanici_uye_ol_linkine_tiklar() {
        page.uyeolLinki.click();
    }
    @Given("kullanici devam butonuna tiklar")
    public void kullanici_devam_butonuna_tiklar() {
        page.devamButonu.click();
        //Driver.closeDriver();
    }
    @Then("kullanici hesap olustur sayfasinda girilmesi gereken bilgiler altinda uyarilar görur")
    public void kullanici_hesap_olustur_sayfasinda_girilmesi_gereken_bilgiler_altinda_uyarilar_görur() {
        page.adKutusuAltindakiUyari.isDisplayed();
    }

    @Given("kullanici ad kutusunu bos birakir")
    public void kullanici_ad_kutusunu_bos_birakir() {

    }
    @Given("kullanici soyad kutusuna {string} girer")
    public void kullanici_soyad_kutusuna_girer(String string) {
        page.sukuniminLaatikko.sendKeys(ConfigurationReader.getProperty("soyad"));
    }
    @Given("kullanici email kutusuna {string} girer")
    public void kullanici_email_kutusuna_girer(String string) {
        page.emailKutusu.sendKeys(ConfigurationReader.getProperty("gecerli_email"));

    }
    @Given("kullanici sifre kutusuna {string} girer")
    public void kullanici_sifre_kutusuna_girer(String string) {
        page.salasananLaatikko.sendKeys(ConfigurationReader.getProperty("dogru_sifre"));
    }
    @Given("kullanici sifre tekrar kutusuna {string} girer")
    public void kullanici_sifre_tekrar_kutusuna_girer(String string) {
        page.uudestanSalasananLaatikko.sendKeys(ConfigurationReader.getProperty("sifre_tekrari"));
    }

    @Given("kullanici ad kutusuna {string} girer")
    public void kullanici_ad_kutusuna_girer(String string) {
        page.etuniminLaatikko.sendKeys(ConfigurationReader.getProperty("ad"));
    }
    @Given("kullanici soyad kutusunu bos birakir")
    public void kullanici_soyad_kutusunu_bos_birakir() {
    }

    @Given("kullanici email kutusunu bos birakir")
    public void kullanici_email_kutusunu_bos_birakir() {
    }
    @Given("kullanici sifre kutusunu bos birakir")
    public void kullanici_sifre_kutusunu_bos_birakir() {

    }

}
