*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${url}  https://www.ebay.pl/
${browser}  chrome
${incognito}    options=add_arguments("--incognito")

*** Keywords ***
Open And Maximize Browser
    Open Browser    ${url}  ${browser}  ${incognito}
    Sleep   3s
    Maximize Browser Window

Close Browser After Test
    Close Browser
