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
    @Given("kullanici hicbir bilgi girmeden devam butonuna tiklar")
    public void kullanici_hicbir_bilgi_girmeden_devam_butonuna_tiklar() {
        page.devamButonu.click();
    }
    @Then("kullanici hesap olustur sayfasinda girilmesi gereken bilgiler altinda uyarilar görur")
    public void kullanici_hesap_olustur_sayfasinda_girilmesi_gereken_bilgiler_altinda_uyarilar_görur() {
        page.adKutusuAltindakiUyari.isDisplayed();
        Driver.closeDriver();
    }

}
