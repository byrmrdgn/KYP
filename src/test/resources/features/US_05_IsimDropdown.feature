@uyeDropdown
Feature: Kullanici Kitap Yurdu Sayfasinda Isminin Oldugu Dropdownda Islem yapar
  Scenario: kullanici isiminin oldugu dropdown icinde islem yapar
    Given kullanici "kitapyurdu" adresine gider
    And kullanici giris yap linkine tiklar
    And kullanici email kutusuna "email adresini" girer
    And kullanici sifre kutusuna "sifresini" girer
    And kullanici giris yap butonuna tiklar
    And adinin yazdigi dropdowna gider