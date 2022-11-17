Documentation
... Suite específica para os testes de elementos

*** Settings ***

Resource        ../Shared/locators/inicio/keywords_inicio.robot
Resource        ../Shared/resources/ resource_commom.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Cases ***
Test case 01: Acessar o site FatecJD
    DADO que eu acesse o Google
    QUANDO pesquisar FatecJD
    ENTÃO devo acessar o site FatecJD

Test case 02: Testar menu Graduação curso Cybersegurança
    DADO que o menu graduação esteja visível
    QUANDO for clicado no curso defesa cibernética
    ENTÃO valido o título da página e tiro uma screenshot do curso Cibernética
    ENTÃO role a página para baixo para visualizar mais informações

Test case 03: Testar menu Graduação curso Análise e Desenvolvimento de Sistemas
    DADO que o menu graduação esteja visível
    QUANDO for clicado no curso análise e desenvolvimento de sistemas
    ENTÃO valido o título da página e tiro uma screenshot do curso de ADS
