*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   encerra sessão

***Test Cases ***
Selecionando por ID
    Go To                           ${url}/radios
    Select Radio Button             movies  cap
    Radio Button Should Be set To   movies  cap

Selecionando por value
    Go To                           ${url}/radios
    Select Radio Button             movies  guardians
    Radio Button Should Be set To   movies  guardians