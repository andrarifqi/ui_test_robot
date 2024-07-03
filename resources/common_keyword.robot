*** Settings ***
Resource        ${CURDIR}/../variables/common_variable.robot
Resource        ${CURDIR}/../variables/login_variable.robot
Library         SeleniumLibrary
Library         OperatingSystem


*** Keywords ***
Open Web
    [Arguments]    ${baseUrl}
    Open Browser    ${baseUrl}/login  ${browser}  executable_path=${driverPath}

End Test
    Close Browser

Open Creator Profile
    [Arguments]    ${creatorName}
    Go to   ${baseUrl}/${creatorName}
    Wait Until Page Contains    ${creatorName}      ${timeout}