package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import pages.Page;

public class US_03_BasarisizGirisIsemi {

    Page page =new Page();
    @Given("kullanici giris yap linkine tiklar")
    public void kullanici_giris_yap_linkine_tiklar() {
        page.girisYapLinki.click();
    }

    @Given("kullanici giris yap butonuna tiklar")
    public void kullanici_giris_yap_butonuna_tiklar() {
        page.girisYapButonu.click();
    }

    @Then("sifremi unuttum linkine tiklar")
    public void sifremi_unuttum_linkine_tiklar() {
        page.sifremiUnuttum.click();
    }

    @Given("kullanici sifre kutusundaki göz simgesine tiklar")
    public void kullanici_sifre_kutusundaki_göz_simgesine_tiklar() {
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        page.gözSimgesi.click();
    }
}
