*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://training-wheels-protocol.herokuapp.com/
${url_rally}    https://rally1.rallydev.com/slm/login.op?logout=true

*** Keywords ***
Inicia sessão           
    Open Browser                           ${url}          chrome

Encerra sessão          
    Close Browser