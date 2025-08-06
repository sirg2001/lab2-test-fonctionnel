*** Settings ***
Documentation    Tests fonctionnels UI – Customer Service
Resource         ../resources/variables.robot
Resource         ../resources/keywords.robot
Library          SeleniumLibrary

*** Test Cases ***

Connexion valide et accès Customer Service
    [Documentation]    Test passant – Connexion avec identifiants valides et accès Customer Service
    Ouvrir le site CRM
    Se connecter avec email et mot de passe    ${VALID_EMAIL}    ${VALID_PASS}
    Aller à l’onglet Customer Service
    Page Should Contain    Customer Service
    Fermer le navigateur

Connexion avec mot de passe incorrect
    [Documentation]    Test non passant – Mot de passe invalide
    Ouvrir le site CRM
    Se connecter avec email et mot de passe    ${VALID_EMAIL}    ${INVALID_PASS}
    Page Should Contain    Invalid email or password
    Fermer le navigateur

Connexion avec email vide
    [Documentation]    Test non passant – Champ email vide
    Ouvrir le site CRM
    Se connecter avec email et mot de passe    ${EMPTY}    ${VALID_PASS}
    Page Should Contain    Email is required
    Fermer le navigateur
