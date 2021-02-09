*** Settings ***
Documentation                   Testes da página de login

Library                         Browser

*** Test Cases ***
Login com sucesso
    Open Browser                http://parodify.herokuapp.com/users/sign_in         chromium
    # New Page                    http://parodify.herokuapp.com/users/sign_in

    Fill Text                   id=user_email                                       papito@parodify.com
    Fill Text                   id=user_password                                    pwd123

    Click                       css=input[value="Log in"]
    
    Wait For Elements State     css=a[href$=sign_out]           visible             10