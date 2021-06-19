@bilgisizGiris
Feature: Kullanici gerekli bilgileri yazmadan uyelik islemi gerceklesmemeli

  @uyeKayitSayfasi
  Scenario: TC_001 Kullanici kitap yurdu uyelik sayfasina gider
  Given kullanici "kitapyurdu" adresine gider
  And kullanici uye ol linkine tiklar

  @VerisizUyeKayitIslemi
  Scenario: TC_002 Kullanici hicbir veri girmeden uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici devam butonuna tiklar

  @isimsizGiris
  Scenario: TC_003 Kullanici adini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusunu bos birakir
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @gecersizIsimleGiris
  Scenario: TC_004 Kullanici gecersiz isim ile giris yapmayi dener
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
  Scenario: TC_005 Kullanici soyadini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusunu bos birakir
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @gecersizSoyisimIleGiris
  Scenario: TC_006 Kullanici gecersiz soyisim ile giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna gecersiz soyad girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @emailsizGiris
  Scenario: TC_007 Kullanici email adresini yazmadan uye olmayi dener
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
  Scenario: TC_008 Kullanici sifre yazmadan uye olmayi dener
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
  Scenario: TC_009 Kullanici tekrar sifresini yazmadan uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusunu bos birakir
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @kisiselVerileriKabulEtmedenGiris
  Scenario: TC_010 Kullanici kisisel verilerin korunmasini kabul etmeden uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul etmez
    And kullanici devam butonuna tiklar

  @yanlisSifreIleGiris
  Scenario: TC_011 Kullanici yanlis sifre yazarak uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna "adini" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" yanlis girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar

  @GecerliUyelik
  Scenario: TC_012 Kullanici kosullari yerine getirerek uye olur
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
  Scenario: TC_013 Kullanici ayni email adresi ile yeni bilgiler kullanarak uye olmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici uye ol linkine tiklar
    And kullanici ad kutusuna farkli bir "ad" girer
    And kullanici soyad kutusuna "soyadini" girer
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre tekrar kutusuna "sifresini" girer
    And kullanici kisisel verilerin korunmasini kabul eder
    And kullanici devam butonuna tiklar