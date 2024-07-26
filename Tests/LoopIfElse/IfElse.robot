*** Settings ***
Documentation   To jest test, w którym testujemy pętle IfElse
Library         SeleniumLibrary

*** Keywords ***
Keyword 1
    Log    Keyword 1 is run
    Close Browser
Keyword 2
    Log    Keyword 2 is run
    Close Browser
Keyword 3
    Log    Keyword 3 is run
    Close Browser

*** Variables ***
&{slownik_login}    user1=admin     password1=security
...                 user2=user      password2=first

*** Test Cases ***
Test1
    IF     '${slownik_login}[user1]' == 'admin'
        Log     admin
    ELSE
        Log     This is not the right answer
    END
Test2
    Open Browser    https://demowebshop.tricentis.com/jewelry   chrome
    ${list_of_items}=  Get Element Count    class:product-item
    Run Keyword If    ${list_of_items} == 10    Keyword 1
    ...  ELSE IF    ${list_of_items} < 10       Keyword 2
    ...  ELSE   Keyword 3