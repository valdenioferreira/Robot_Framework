*** Settings ***
Resource            base.robot

Test Setup          Inicia sessão
Test Teardown       Encerra sessão

***Test Cases ***
Selecionar a informação pelo texto
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list              Natasha Romanoff
    ${selected}=                    Get Selected List Value         class:avenger-list
    Should Be Equal                 ${selected}                     4

Selecionar a informação pelo id
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown                     6
    ${selected}=                    Get Selected List Label         id:dropdown
    Should Be Equal                 ${selected}                     Loki