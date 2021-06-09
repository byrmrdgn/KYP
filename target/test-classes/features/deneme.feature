@bilgisizGiris
Feature: KYP
Scenario: kullanici gerekli bilgileri yazmadan giris yapamamali
  Given kullanici "kitapyurdu" adresine gider
  And kullanici uye ol linkine tiklar
  And kullanici devam butonuna tiklar
  Then kullanici hesap olustur sayfasinda girilmesi gereken bilgiler altinda uyarilar görur

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