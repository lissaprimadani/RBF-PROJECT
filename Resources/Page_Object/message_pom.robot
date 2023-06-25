*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    ../lib/commonlib.py
Library    ../lib/dblib.py
Library    ../lib/apilib.py
Variables    ../Locators/login_locators.py

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    chrome
${urlAPI}    https://reqres.in/api/users
&{param}    page=2

*** Keywords ***

Send message 1
    Log    message 1
    Date_Now
    Cetak Nama    Lissa

Send message 2
    Log    message 2
    ${resp}    GET API    ${urlAPI}    ${param}
    Log    ${resp}.data[1]
    
Send message 3
    Log    message 3