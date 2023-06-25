*** Settings ***
Resource    ../Resources/Page_Object/login_pom.robot
Resource    ../Resources/Page_Object/message_pom.robot

*** Keywords ***

I am on login page
    go to login page
    check text login title
    check username textbox
    check password textbox
    check login button
    check forgot password

I input corret username
    Input correct username

I input correct password
    Input correct password

Click login button
    Click login button

I should go to dashboard page
    Show dashboard title

I should show invalid login information
    show invalid login

I input username
    Input username    ${usrnm}
I input password
    Input password    ${pwd}

As a user I Should not be able to login because username empty
    Given I am on login page
    When Input empty username
    And Input correct password
    And Click login button
    Then I should show invalid login information

As a user I Should not be able to login because password empty
    Given I am on login page
    When Input correct username
    And Input empty password
    And Click login button
    Then I should show invalid login information

i type message 1
    Send message 1

i type message 2
    Send message 2

i type message 3
    Send message 3

    