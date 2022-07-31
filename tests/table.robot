*** Settings ***
Resource            base.robot

Test Setup          Inicia sessão
Test Teardown       Encerra sessão

***Test Cases ***
Vamos validar o valor ao informar o numero da linha
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors       1       @robertdowneyjr

Vamos validar os campos das linhas da tabela
    Go To                           ${url}/tables
    ${target}=                      Get WebElement           xpath:.//tr[contains(., '@prattprattpratt')]
    Log                             ${target.text}
    Should Contain                  ${target.text}           @prattprattpratt
    Should Contain                  ${target.text}           Chris Pratt                   
    Should Contain                  ${target.text}           Vingadores