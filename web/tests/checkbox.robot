*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   encerra sessão

*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id="checkboxes"]/input[7]
${sleep_timer}      5


*** Test Cases ***
Marcando opção com id
    Go To                                   ${url}/checkboxes      
    Select Checkbox                         ${check_thor}
    Checkbox Should Be Selected             ${check_thor}

Marcando opção com CSS seletor
    Go To                                   ${url}/checkboxes      
    Select Checkbox                         ${check_iron}
    Checkbox Should Be Selected             ${check_iron}


Marcando opção com XPATH
    [tags]      ironman
    Go To                                   ${url}/checkboxes      
    Select Checkbox                         ${check_panther}
    Checkbox Should Be Selected             ${check_panther}
    sleep                                   ${sleep_timer}