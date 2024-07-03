*** Settings ***
Resource        ${CURDIR}/../variables/common_variable.robot
Resource        ${CURDIR}/../variables/login_variable.robot
Library         SeleniumLibrary
Library         OperatingSystem


*** Keywords ***
Open Web
    [Arguments]    ${base_url}
    Open Browser    ${base_url}/login  ${browser}  executable_path=${driver_path}

End Test
    Close Browser

Open Creator Profile
    [Arguments]    ${creator_name}
    Go to   ${base_url}/${creator_name}
    Wait Until Page Contains    ${creator_name}      ${timeout}