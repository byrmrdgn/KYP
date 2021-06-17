@uyeGirisIslemi
Feature: Kullanici Uye olarak sisteme giris yapar
  Scenario: Kullanici uye olarak sisteme giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici giris yap butonuna tiklar
