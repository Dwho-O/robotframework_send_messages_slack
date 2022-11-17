Documentation
... Suíte com palavras chave de início do sistema
*** Settings ***
Library            SeleniumLibrary
Library            String
Library    OperatingSystem
Resource           ../../locators/inicio/variables_inicio.robot
*** Keywords ***
DADO que eu acesse o Google
    Go To        ${Google}
QUANDO pesquisar FatecJD
    Input Text                        ${Search}    FatecJD
    Wait Until Element Is Visible     ${Pesquisar}
    Click Button                      ${Pesquisar}
ENTÃO devo acessar o site FatecJD
    Wait Until Element Is Visible     ${Titulo}
    Click Element                     ${Titulo}

DADO que o menu graduação esteja visível
    Run Keyword    DADO que eu acesse o Google
    Run Keyword    QUANDO pesquisar FatecJD
    Run Keyword    ENTÃO devo acessar o site FatecJD
    Wait Until Element Is Visible     ${Graduação}
    Mouse Over                        ${Graduação}

QUANDO for clicado no curso defesa cibernética
    Wait Until Element Is Visible     ${Curso_Cy}
    Click Element                     ${Curso_Cy}

ENTÃO valido o título da página e tiro uma screenshot do curso Cibernética
    Title Should Be                    ${Titulo_Cy}
    Capture Page Screenshot            evidencia_cyber_pagina_{index:05}.png

ENTÃO role a página para baixo para visualizar mais informações
    Run Keyword And Ignore Error    Scroll Element Into View           ${Mais_info_Cy}
    Wait Until Element is visible                                      ${Mais_info_Cy}     timeout=5s
    Sleep                                                              3s
    Capture Page Screenshot                                            evidencia_cyber_pagina_{index:05}.png

QUANDO for clicado no curso análise e desenvolvimento de sistemas
    Wait Until Element Is Visible     ${Curso_Ads}
    Click Element                     ${Curso_Ads}

ENTÃO valido o título da página e tiro uma screenshot do curso de ADS
    Title Should Be                    ${Titulo_Ads}
    Capture Page Screenshot            evidencia_ads_pagina_{index:05}.png
