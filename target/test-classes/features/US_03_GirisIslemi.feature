@uyeGirisIslemi
Feature: Kullanici Uye olarak sisteme giris yapar

  @verisizGirisIslemi
  Scenario: Kullanici hicbir veri girmeden giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici giris yap butonuna tiklar

  @epostasizGirisIslemi
  Scenario: Kullanici uye olarak sisteme giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusunu bos birakir
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici giris yap butonuna tiklar

@basariliGirisIslemi
  Scenario: Kullanici uye olarak sisteme giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici giris yap butonuna tiklar