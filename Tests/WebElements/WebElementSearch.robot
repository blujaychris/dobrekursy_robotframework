*** Settings ***
Documentation   To jest test, w którym testujemy otwieranie przeglądarki i wyszukiwanie
...             1. Otwieramy przeglądarkę na stronie ebay
...             2. Uzytkownik klika na pole do wyszukiwania i wpisuje tekst
...             3. Uzytkownik klika na przycisk "Wyszukaj"
...             4. Weryfikacja wynikow
...             5. Zamykamy przegladarke
Library         SeleniumLibrary
Resource        ../../Resources/zasoby_ebay.robot
Resource        ../../Resources/zasoby_common.robot
Task Setup      Open And Maximize Browser
Test Teardown   Close All Browsers

*** Keywords ***

*** Variables ***

*** Test Cases ***
EBAY
    [Tags]  ebay    chrome  selenium    search
    Input Text    ${xpath_objects}{search_box}  ${search_phrase}
    Sleep   3s
    Click Element   ${xpath_objects}{search_button}
    Sleep   2s
    Page Should Contain    ${search_result_checker}    TRACE
    Sleep   2s
