@uyeGirisIslemi
Feature: Kullanici Uye olarak sisteme giris yapar

  @verisizGirisIslemi
  Scenario: Kullanici hicbir veri girmeden giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    Then kullanici giris yap butonuna tiklar

  @sifremiUnuttum
  Scenario: Kullanici sifremi unuttum linkine tiklayarak sifresine ulasmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusunu bos birakir
    Then sifremi unuttum linkine tiklar

  @epostasizGirisIslemi
  Scenario: Kullanici uye olarak sisteme e posta adresini yazmadan giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusunu bos birakir
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici giris yap butonuna tiklar

  @sifresizGirisIslemi
  Scenario: Kullanici uye olarak sisteme sifresini yazmadan giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusunu bos birakir
    And kullanici giris yap butonuna tiklar

  @sifremiGör
  Scenario: Kullanici uye olarak sisteme giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici sifre kutusundaki göz simgesine tiklar

  @beniHatirla
  Scenario: Kullanici uye olarak sisteme giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici beni hatirla kutusuna tiklar

  @basariliGirisIslemi
  Scenario: Kullanici uye olarak sisteme giris yapmayi dener
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici giris yap butonuna tiklar