*** Settings ***
Resource    ${CURDIR}/../variables/common_variable.robot
Resource    ${CURDIR}/../variables/login_variable.robot
Resource    ${CURDIR}/../variables/payment_variable.robot
Resource    ${CURDIR}/../resources/login.robot

*** Keywords ***
Donate to Creator
    Wait Until Page Contains Element    ${donateCreatorBtn}   ${timeout}
    Click Element    ${donateCreatorBtn}
    Wait Until Page Contains Element    ${donateSubmitBtn}   ${timeout}
    Click Element    ${donateSubmitBtn}
    Wait Until Page Contains Element    ${qrisRadioBtn}   ${timeout}
    Click Element    ${qrisRadioBtn}
    Wait Until Page Contains Element    ${payBtn}   ${timeout}
    Click Element    ${payBtn}
    Switch Window  NEW   ${timeout}   CURRENT
    Wait Until Page Contains Element    ${qrisQrCode}   ${timeout}
    Wait Until Element Is Visible    ${qrisQrCode}   ${timeout}

