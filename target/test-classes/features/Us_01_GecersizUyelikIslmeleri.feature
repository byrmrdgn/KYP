@bilgisizGiris
Feature: Kullanici gerekli bilgileri yazmadan giris yapamamali

  @uyeKayitSayfasi
  Scenario: kullanici kitap yurdu uyelik sayfasina gider
  Given kullanici "kitapyurdu" adresine gider
  And kullanici uye ol linkine tiklar
  And kullanici devam butonuna tiklar

  @isimsizGiris
  Scenario: kullanici adini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusunu bos birakir
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici devam butonuna tiklar

  @soyisimsizGiris
  Scenario: kullanici soyadini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusunu bos birakir
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici devam butonuna tiklar

  @emailsizGiris
  Scenario: kullanici email adresini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusunu bos birakir
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici devam butonuna tiklar

  @sifresizGiris
  Scenario: kullanici sifre yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusunu bos birakir
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici devam butonuna tiklar

  @tekrarSifresizGiris
  Scenario: kullanici tekrar sifresini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusunu bos birakir
    And kullanici devam butonuna tiklar

  @yanlisSifreIleGiris
  Scenario: kullanici yanlis sifre yazarak uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" yanlis girer
    And kullanici devam butonuna tiklar

  @kisiselVerileriKabulEtmedenGiris
  Scenario: kullanici kisisel verilerin korunmasini kabul etmeden uye olmayi dener
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
  Scenario: kullanici kosullari yerine getirerek uye olur
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar