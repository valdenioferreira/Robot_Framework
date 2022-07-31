*** Settings ***
Resource            base.robot

Test Setup          Inicia sessão
Test Teardown       Encerra sessão

***Test Cases ***
Selecionando por ID os Radios Button
    Go To                           ${url}/radios
    Select Radio Button             movies  the-avengers
    Radio Button Should Be Set To   movies  the-avengers
    Capture Page Screenshot

Selecionando por value os Radios Button
    Go To                           ${url}/radios
    Select Radio Button             movies  iron-man
    Radio Button Should Be Set To   movies  iron-man
    Capture Page Screenshot