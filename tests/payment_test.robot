*** Settings ***
Resource    ${CURDIR}/../variables/login_variable.robot
Resource    ${CURDIR}/../variables/payment_variable.robot
Resource    ${CURDIR}/../resources/common_keyword.robot
Resource    ${CURDIR}/../resources/login.robot
Resource    ${CURDIR}/../resources/payment.robot
Test Setup    Open Web    ${baseUrl}
Test Teardown    End Test

*** Test Cases ***
Successfully Donate to Creator
    Login to Gank
    Open Creator Profile    ardisty98
    Donate to Creator
    Sleep   5
