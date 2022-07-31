*** Settings ***
Resource            base.robot

Test Setup          Inicia sessão

***Test Cases ***
Logando com login e senha no Rally
    Go To                           ${url}/login
    Login With                      stark   jarvis!
    Should see Logged user          Tony Stark
    Capture Page Screenshot 
    Click Element                   class:icon-signout
    Page Should Contain             Você saiu da área logada!
    Capture Page Screenshot

Validando a mensagem de senha invalida
    [tags]                          enha_error
    Go To                           ${url}/login
    Login With                      stark   123456
    Should Contain Login Alert      Senha é invalida!

Validando a mensagem de login invalida
    [tags]                          ogin_error
    Go To                           ${url}/login
    Login With                      Valdenio   123456
    Should Contain Login Alert      O usuário informado não está cadastrado!

*** Keywords ***
Login With
    [Arguments]                     ${uname}    ${pass}
    Input Text                      css:input[name=username]       ${uname}
    Input Text                      css:input[name=password]       ${pass}
    Click Element                   class:btn-login

Should Contain Login Alert
    [Arguments]                     ${expected_message}
    ${message}=                     Get WebElement                  id:flash
    Should Contain                  ${message.text}                 ${expected_message}

Should see Logged user
    [Arguments]                     ${full_name}
    Page Should Contain             Olá, ${full_name}. Você acessou a área logada!