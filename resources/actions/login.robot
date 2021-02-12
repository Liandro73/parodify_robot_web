*** Settings ***
Documentation                       Ações da página de login

*** Keywords ***
Open Login Page
    # New Page                        http://parodify.herokuapp.com/users/sign_in
    Open Browser                    http://parodify.herokuapp.com/users/sign_in         chromium

Login With
    [Arguments]                     ${email_arg}                                        ${password_arg}

    Fill Text                       id=user_email                                       ${email_arg}
    Fill Text                       id=user_password                                    ${password_arg}

    Click                           css=input[value="Log in"]

Alert Should Be
    [Arguments]                     ${expect_arg}

    Get Text                        css=.is-danger .message-body            equal       ${expect_arg}