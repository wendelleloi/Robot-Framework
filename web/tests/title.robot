*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   encerra sessão

*** Test Cases ***
Deve validar o título da página
    Title Should Be     Training Wheels Protocol