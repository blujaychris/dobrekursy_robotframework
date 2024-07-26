*** Settings ***
Documentation   To jest test, w którym testujemy dane bez pliku excel
Library         SeleniumLibrary
Library         DataDriver      ../TestData/TestData.xlsx   sheet_name=Sheet1
Resource        ../TestData/TestData.robot

Test Template   Login complete
Suite Setup     TestData.Open And Maximize Browser
Suite Teardown  TestData.Close Browser After Test

*** Keywords ***
Login Complete
    [Arguments]     ${login}    ${password}    ${page_message}
    Input Text    //*[@id="username"]    ${login}
    Input Text    //*[@id="password"]    ${password}
    Click Element    //*[@id="submit"]
    Page Should Contain     ${page_message}
    Sleep   2s
*** Variables ***
*** Test Cases ***
Login Functionality With Excel
    Login complete  ${login}    ${password}    ${page_message}
