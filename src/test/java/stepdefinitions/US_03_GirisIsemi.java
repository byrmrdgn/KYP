package stepdefinitions;

import io.cucumber.java.en.Given;
import pages.Page;

public class US_03_GirisIsemi {

    Page page =new Page();
    @Given("kullanici giris yap linkine tiklar")
    public void kullanici_giris_yap_linkine_tiklar() {
        page.girisYapLinki.click();
    }
    @Given("kullanici giris yap butonuna tiklar")
    public void kullanici_giris_yap_butonuna_tiklar() {
        page.girisYapButonu.click();
    }
}
