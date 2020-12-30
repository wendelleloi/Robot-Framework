*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          welcome         Wendell
    Should Be Equal      ${result}       Olá Wendell de novo