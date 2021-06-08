@gecerlibilgilergirilmeden
Feature: KYP
Scenario: kullanici gerekli bilgileri yazmadan giris yapamamali
  Given kullanici "kitapyurdu" adresine gider
  And kullanici uye ol linkine tiklar
  And kullanici hicbir bilgi girmeden devam butonuna tiklar
  Then kullanici hesap olustur sayfasinda girilmesi gereken bilgiler altinda uyarilar görur