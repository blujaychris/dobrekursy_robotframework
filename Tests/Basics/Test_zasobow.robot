*** Settings ***
Documentation   Nasz test test zasobow
Resource        ../../Resources/zasoby.robot

*** Test Cases ***
TEST1
    Zaloguj uzytkownika
    Zaloguj wybranego uzytkownika       ${MOJ_SLOWNIK}[login]       ${MOJ_SLOWNIK}[haslo]