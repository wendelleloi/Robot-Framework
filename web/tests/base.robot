*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com
${Browser}          chrome

*** Keywords ***
Nova sessão
    Open Browser     ${url}              ${Browser}

encerra sessão
    Capture Page Screenshot
    Close Browser