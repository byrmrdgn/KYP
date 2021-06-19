@bilgisizGiris
Feature: Kullanici gerekli bilgileri yazmadan uyelik islemi gerceklesmemeli

  @uyeKayitSayfasi
  Scenario: Kullanici kitap yurdu uyelik sayfasina gider
  Given kullanici "kitapyurdu" adresine gider
  And kullanici uye ol linkine tiklar

  @VerisizUyeKayitIslemi
  Scenario: Kullanici hicbir veri girmeden uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici devam butonuna tiklar

  @isimsizGiris
  Scenario: Kullanici adini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusunu bos birakir
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @GecersizIsimleGiris
  Scenario: Kullanici gecersiz isim ile giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna gecersiz isim girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @soyisimsizGiris
  Scenario: Kullanici soyadini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusunu bos birakir
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @emailsizGiris
  Scenario: Kullanici email adresini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusunu bos birakir
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @sifresizGiris
  Scenario: Kullanici sifre yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusunu bos birakir
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @tekrarSifresizGiris
  Scenario: Kullanici tekrar sifresini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusunu bos birakir
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @yanlisSifreIleGiris
  Scenario: Kullanici yanlis sifre yazarak uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" yanlis girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @kisiselVerileriKabulEtmedenGiris
  Scenario: Kullanici kisisel verilerin korunmasini kabul etmeden uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul etmez
    And kullanici devam butonuna tiklar

  @GecerliUyelik
  Scenario: Kullanici kosullari yerine getirerek uye olur
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @ayniEmailIleUyelik
  Scenario: Kullanici ayni email adresi ile yeni bilgiler kullanarak uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna farkli bir "ad" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar