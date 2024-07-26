*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
Search given phrase in the search box
    Input Text    ${xpath_objects}[search_box]  ${search_phrase}
    Sleep   3s
    Click Element   ${xpath_objects}[search_button]
    Sleep   2s
Check if Page contains given element
    Page Should Contain    ${search_result_checker}    TRACE
    Sleep   2s
Mark "Kup Teraz" button
    Click Element   ${xpath_objects}[kup_teraz_button]
    Sleep   2s
Mark "Stan:nowy" in the checkbox
    Select Checkbox   ${xpath_objects}[stan_nowy]
    Sleep   2s
Limit results for price up to 100
    Input Text    ${xpath_objects}[price_box]  ${price}
    Sleep   2s
    Press Keys    ${xpath_objects}[zakres_cen_button]  RETURN
    Sleep   2s

*** Variables ***
${search_phrase}    klocki
${search_result_checker}    Wyniki dla
${price}    100

&{xpath_objects}    search_box=//*[@id="gh-ac"]
...                 search_button=//*[@id="gh-btn"]
...                 kup_teraz_button=//*[@id="mainContent"]/div[1]/div/div[2]/div[2]/div[1]/div/ul/li[3]/a/span
...                 stan_nowy=//*[@id="x-refine__group__1"]/ul/li[1]/div/a/div/span/input
...                 price_box=//*[@id="s0-60-0-12-8-0-1-2-2-9[2]-textrange-endParamValue-textbox"]
...                 zakres_cen_button=//*[@id="x-refine__group__2"]/div[1]/div[2]/div[1]/div/div[3]/button
