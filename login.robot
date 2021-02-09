*** Settings ***
Documentation           Testes da página de login

Library                 Browser

*** Test Cases ***
Login com sucesso
    # Open Browser        http://parodify.herokuapp.com/users/sign_in         chromium
    New Page            http://parodify.herokuapp.com/users/sign_in
    Get Text            label[for=user_email]       contains                Email