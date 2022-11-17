ocumentation
... Suíte com recursos comuns de sistema
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}      chrome

*** Keywords ***

Abrir navegador
    Open Browser        about:blank   ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Delete All Cookies
    Close Browser