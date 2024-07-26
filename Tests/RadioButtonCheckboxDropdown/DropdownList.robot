*** Settings ***
Documentation   To jest test, w którym testujemy Dropdown List
Library         SeleniumLibrary
*** Keywords ***
*** Variables ***

*** Test Cases ***
Dropdown List Check
    Open Browser    https://demowebshop.tricentis.com/books     chrome
    Maximize Browser Window
    Sleep   2s

    Page Should Contain List    //*[@id="products-orderby"]
    Sleep   1s

    Page Should Not Contain List   //*[@id="097"]
    Sleep   1s

    @{AllItems}     Get List Items             //*[@id="products-orderby"]
    ${ListLabels}   Get Selected List Label    //*[@id="products-orderby"]
    ${ListValues}   Get Selected List Values   //*[@id="products-orderby"]

    List Selection Should Be    //*[@id="products-orderby"]     Position

    Select From List By Index   //*[@id="products-orderby"]     2
    ${SelectedLabel1}   Get Selected List Labels    //*[@id="products-orderby"]
    ${SelectedLabel1}   Get Selected List Values    //*[@id="products-orderby"]
    Sleep   2s

    Select From List By Value    //*[@id="products-orderby"]    https://demowebshop.tricentis.com/books?orderby=0
    ${SelectedLabel2}   Get Selected List Labels    //*[@id="products-orderby"]
    ${SelectedLabel2}   Get Selected List Values    //*[@id="products-orderby"]
    Sleep   2s