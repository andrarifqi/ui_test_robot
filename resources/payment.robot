*** Settings ***
Resource    ${CURDIR}/../variables/common_variable.robot
Resource    ${CURDIR}/../variables/login_variable.robot
Resource    ${CURDIR}/../variables/payment_variable.robot
Resource    ${CURDIR}/../resources/login.robot

*** Keywords ***
Donate to Creator
    Wait Until Page Contains Element    ${donate_creator_btn}   ${timeout}
    Click Element    ${donate_creator_btn}
    Wait Until Page Contains Element    ${donate_submit_btn}   ${timeout}
    Click Element    ${donate_submit_btn}
    Wait Until Page Contains Element    ${qris_radio_btn}   ${timeout}
    Click Element    ${qris_radio_btn}
    Wait Until Page Contains Element    ${pay_btn}   ${timeout}
    Click Element    ${pay_btn}
    Switch Window  NEW   ${timeout}   CURRENT
    Wait Until Page Contains Element    ${qris_qr_code}   ${timeout}
    Wait Until Element Is Visible    ${qris_qr_code}   ${timeout}
