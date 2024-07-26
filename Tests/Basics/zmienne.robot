*** Settings ***
Documentation   Nasz test zmiennych

*** Keywords ***
Zaloguj uzytkownika
    Log     ${MOJ_SLOWNIK}[login]
    Log     ${MOJ_SLOWNIK}[haslo]

Zaloguj uzytkownika2
    Log     ${MOJ_SLOWNIK2}[login]
    Log     ${MOJ_SLOWNIK2}[haslo]

Zaloguj uzytkownikow
    Zaloguj uzytkownika
    Zaloguj uzytkownika2

Wypisz zmienne
    Log     ${MOJA_ZMIENNA}
    Log     ${MOJA_ZMIENNA2}

Wpisz wybrany login
    [Arguments]     ${UZYTKOWNIK}
    Log             ${UZYTKOWNIK}

Zaloguj wybranego uzytkownika
    [Arguments]     ${UZYTKOWNIK}   ${HASLO}
    Log             ${UZYTKOWNIK}
    Log             ${HASLO}
    Log Many        ${UZYTKOWNIK}   ${HASLO}
    Log     Logowanie z uzytkownikiem: ${UZYTKOWNIK} i haslem: ${HASLO}

*** Variables ***
${MOJA_ZMIENNA}     Hello variable
${MOJA_ZMIENNA2}    niebieski

@{MOJA_LISTA}   test1   test2   test3   test4

&{MOJ_SLOWNIK}  login=janek     haslo=12345
&{MOJ_SLOWNIK2}  login=franek     haslo=6789

*** Test Cases ***
TEST1
    [Tags]  Kurs    Kurs2
    Wypisz zmienne
    Log     ${MOJA_LISTA}
    Log     ${MOJA_LISTA}[0]
    Log     ${MOJA_LISTA}[2]
    Log     ${MOJA_LISTA}[:2]
    Log     ${MOJA_LISTA}[2:]
    Zaloguj uzytkownikow
    Wpisz wybrany login     janek
    Wpisz wybrany login     ${MOJ_SLOWNIK2}[login]
    Zaloguj wybranego uzytkownika       ${MOJ_SLOWNIK}[login]       ${MOJ_SLOWNIK}[haslo]
    Zaloguj wybranego uzytkownika       ${MOJ_SLOWNIK2}[login]       ${MOJ_SLOWNIK2}[haslo]