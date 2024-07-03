*** Settings ***
Resource    ${CURDIR}/../variables/common_variable.robot
Resource    ${CURDIR}/../variables/login_variable.robot

*** Keywords ***
Login to Gank
    Wait Until Element Is Visible   ${username_field}    ${timeout}
    Wait Until Element Is Visible   ${password_field}    ${timeout}
    Wait Until Element Is Visible   ${login_btn}     ${timeout}
    Input Text  ${username_field}   ${username}
    Input Password  ${password_field}   ${password}
    Click Element   ${login_btn}
    Wait Until Page Contains     ${username}        ${timeout}
