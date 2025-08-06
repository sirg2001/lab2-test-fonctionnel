*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Ouvrir le site CRM
    [Documentation]    Ouvre le navigateur et charge la page CRM
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Se connecter avec email et mot de passe
    [Arguments]    ${email}    ${password}
    Click Link    Sign In
    Input Text    id=email-id    ${email}
    Input Text    id=password    ${password}
    Click Button  id=submit-id

Aller à l’onglet Customer Service
    [Documentation]    Navigue vers l’onglet Customer Service
    Click Link    Customer Service

Fermer le navigateur
    [Documentation]    Ferme la fenêtre du navigateur
    Close Browser
