*** Settings ***
Resource        base.robot

Test Setup          Inicia sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Deve validar o titulo
    Title Should Be     Training Wheels Protocol
