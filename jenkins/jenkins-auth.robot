*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}     http://18.201.83.167:8080

*** Test Cases ***
Cas1-Login correcte et mot de passe incorrect
    Ouvrir l'URL jenkins 
    Verifier quon est bien sur la page de connexion
    Saisir le bon username
    Saisir un mauvais mot de passe
    Cliquez sur se "Sign in" 
    Fermer navigateur


Cas2- Login incorrecte et mot de passe incorrecte
    Ouvrir l'URL jenkins 
    Verifier quon est bien sur la page de connexion
    Saisir le mauvais username
    Saisir un mauvais mot de passe
    Cliquez sur se "Sign in" 
    Fermer navigateur

*** Keywords ***

Ouvrir l'URL jenkins 
    Open Browser    ${URL}    chrome
    Sleep    1
    #Wait Until Page Contains    Jenkins    10

Verifier quon est bien sur la page de connexion
   Sleep    2
   Title Should Be    S'identifier - Jenkins

Saisir le bon username
    Input Text    id=j_username    admin

Saisir le mauvais username
    Input Text    id=j_username    mauvais_user_name

Saisir un mauvais mot de passe
    Input Password    id=j_password    mauvais_mot_de_passe

Cliquez sur se "Sign in" 
    Click Button    name=Submit
    #Click Button    xpath=//*[@id="main-panel"]/div/form/button

Fermer navigateur
    Close Browser