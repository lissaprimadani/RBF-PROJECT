**** Settings ***
Resource    ../Steps/login_steps.robot


#cara running -> robot TestCases/Login.robot --outputdir report

*** Test Cases ***
# As a user I Should be able to login with correct username and password
#     Given I am on login page
#     When I input correct username
#     And I input correct password
#     And Click login button
#     Then I should go to dashboard page

# As a user I Should not be able to login because username and password is empty
#     As a user I Should not be able to login because username empty
#     As a user I Should not be able to login because password empty

# As a user I Should not be able to login because username is and password is wrong
#     [Template]    
#     As a user I Should not be able to login because wrong credential    Admin12    123
#     As a user I Should not be able to login because wrong credential    Admin    123
#     As a user I Should not be able to login because wrong credential    admin123    admin123
#     As a user I Should not be able to login because wrong credential    admin123   min 

# As a user I Should not be able to login because username is and password is wrong
#     [Template]    As a user I Should not be able to login because wrong credential
    
#     Admin12    123
#     Admin    123
#     admin123    admin123
#     admin123    min   

A user runni message
    Given i type message 1
    When i type message 2
    Then i type message 3
    

*** Keywords ***

As a user I Should not be able to login because wrong credential
    [Arguments]    ${usrnm}    ${pwd}
    Given I am on login page
    When I input username    ${usrnm}
    And I input password    ${pwd}
    And Click login button
    Then I should show invalid login information