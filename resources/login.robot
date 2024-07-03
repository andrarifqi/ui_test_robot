*** Settings ***
Resource    ${CURDIR}/../variables/common_variable.robot
Resource    ${CURDIR}/../variables/login_variable.robot

*** Keywords ***
Login to Gank
    Wait Until Element Is Visible   ${usernameField}    ${timeout}
    Wait Until Element Is Visible   ${passwordField}    ${timeout}
    Wait Until Element Is Visible   ${loginBtn}     ${timeout}
    Input Text  ${usernameField}   ${username}
    Input Password  ${passwordField}   ${password}
    Click Element   ${loginBtn}
    Wait Until Page Contains     ${username}        ${timeout}
    # Wait Until Element Is Visible   ${countryBtn}
    # Click Element   ${countryBtn}
    # Wait Until Element Is Visible   ${countryModal}
    # Sleep   5
