*** Settings ***
Documentation                   Testes da página de login

Library                         Browser

Resource                        ./resources/login_actions.robot

# Gancho para tirar screenshot após a execução de cada teste
Test Teardown                   Take Screenshot

*** Test Cases ***
Login com sucesso
    Open Login Page
    # New Page                    http://parodify.herokuapp.com/users/sign_in
    Login With                  papito@parodify.com                                 pwd123
    Wait For Elements State     css=a[href$=sign_out]               visible         10

Senha incorreta
    Open Login Page
    Login With                  papito@parodify.com                                 abc123
    Alert Should Be             Opps! Dados de acesso incorretos!

Email não existe
    Open Login Page
    Login With                  040@gmail.com                                       abc123
    Alert Should Be             Opps! Dados de acesso incorretos!

Email não informado
    Open Login Page
    Login With                  ${EMPTY}                                            abc123
    Alert Should Be             Opps! Dados de acesso incorretos!

Senha não informada
    Open Login Page
    Login With                  papito@parodify.com                                 ${EMPTY}
    Alert Should Be             Opps! Dados de acesso incorretos!