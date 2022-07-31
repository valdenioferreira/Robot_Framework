*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_rally}    https://rally1.rallydev.com/slm/login.op?logout=true

*** Keywords ***
Inicia sessão           
    Open Browser                           ${url_rally}          chrome

