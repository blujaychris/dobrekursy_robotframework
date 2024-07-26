*** Settings ***
Documentation   To jest test, w którym testujemy otwieranie przeglądarki i wyszukiwanie
...             1. Otwieramy przeglądarkę na stronie ebay
...             2. Uzytkownik klika na pole do wyszukiwania i wpisuje tekst
...             3. Uzytkownik klika na przycisk "Wyszukaj"
...             4. Weryfikacja wynikow
...             5. Zaznaczenie opcji dla wynikow "kup teraz"
...             6. Zaznaczenie opcji dla wynikow z Checkboxa "Nowy"
...             7. Wpisujemy cenę maksymalną zakresu cen do 100 zl
...             8. Klikamy potwierdzenie zakresu cen
...             9. Zamykamy przeglądarkę
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
    Search given phrase in the search box
    Check if Page contains given element
    Mark "Kup Teraz" button
    Mark "Stan:nowy" in the checkbox
    Limit results for price up to 100


