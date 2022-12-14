*** Settings ***
Documentation   Faker com dados brasileiros
Library         FakerLibrary    locale=pt_BR

*** Test Cases ***
Teste dados fakes BRASILEIROS
    ${NOME}     FakerLibrary.name       
    ${EMAIL}    FakerLibrary.email
    ${CIDADE}   FakerLibrary.city
    ${CEP}      FakerLibrary.postcode
    ${ESTADO}   FakerLibrary.state

    Log To Console      ${NOME}
    Log To Console      ${EMAIL}
    Log To Console      ${CIDADE}
    Log To Console      ${CEP}
    Log To Console      ${ESTADO}