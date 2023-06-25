*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/login_locators.py
Library    Collections

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    chrome


*** Keywords ***
go to login page
    Open Browser    ${url}    ${Browser}
    Set Selenium Implicit Wait    10
check text login title
    Element Should Contain    ${LoginText}    Login
# check username textbox
#     Element Should Be Enabled    ${usernameTextBox}    Username
# check password textbox
#     Element Should Be Enabled    ${passwordTextBox}    Password
check login button
    Element Should Contain    ${loginButton}    Login
check forgot password
    Element Should Contain    ${loginLink}    Forgot your password?
Input correct username
    Input Text    ${usernameTextBox}    Admin

Input correct password
    Input Text    ${passwordTextBox}    admin123

Click login button
    Click Element    ${loginButton}

Show dashboard title
    Element Should Contain    ${dashboardTitle}    Dashboard

show invalid login
    Element Should Contain    ${invalidLogin}    Invalid credentials

Input username
    [Arguments]    ${usrnm}
    Input Text    ${usernameTextBox}    ${usrnm}
Input password
    [Arguments]    ${pwd}
    Input Text    ${passwordTextBox}    ${pwd}

Input empty username
    Input Text    ${usernameTextBox}    ${empty}

Input empty password
    Input Text    ${passwordTextBox}    ${empty}      



    






