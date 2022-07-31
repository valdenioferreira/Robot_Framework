*** Settings ***
Resource            base.robot

Test Setup          Inicia sessão
Test Teardown       Encerra sessão

*** Test Cases ***
Validando se o titulo existe
    Title Should Be                         Training Wheels Protocol
    Capture Page Screenshot
        
Marcando opção com ID
    Go To                                   ${url}/checkboxes
    Select Checkbox                         id:thor
    Checkbox Should Be Selected             id:thor

Marcando opão com CSS Selector
    Go To                                   ${url}/checkboxes
    Select Checkbox                         css:input[value='the-avengers']
    Checkbox Should Be Selected             css:input[value='the-avengers']
    Capture Page Screenshot
Marcando opão com XPATH Selector
    Go To                                   ${url}/checkboxes
    Select Checkbox                         xpath://*[@id="checkboxes"]/input[5]
    Checkbox Should Be Selected             xpath://*[@id="checkboxes"]/input[5]
    Capture Page Screenshot
Marcando opão com XPATH Selector
    Go To                                   ${url}/checkboxes
    Select Checkbox                         xpath://*[@id="checkboxes"]/input[1]
    Checkbox Should Be Selected             xpath://*[@id="checkboxes"]/input[1]
    Capture Page Screenshot