*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                                   https://front.serverest.dev/login
${cadastreseLink}                        //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${nomeInput}                             //input[contains(@name,'nome')]
${emailInput}                            //input[contains(@name,'email')]
${senhaInput}                            //input[contains(@name,'password')]
${administradorCheckbox}                 //input[contains(@name,'administrador')]
${cadastrarButton}                       //button[@data-testid='cadastrar'][contains(.,'Cadastrar')]

*** Keywords ***
Abrir o navegador
  Open Browser  browser=chrome
  Maximize Browser Window
Fechar o navegador
  Close Browser
Passo 1 - Acessar a página de login ServeRest
  Go To    url=${URL}

Passo 2 - Clicar em cadastre-se
  Wait Until Element Is Visible    locator=${cadastreseLink}
  Click Element                    locator=${cadastreselink}
  
Passo 3 - Digitar um nome
  Wait Until Element Is Visible    locator=${nomeInput}
  Input Text                       locator=${nomeInput}  text=Testernildo da Silva
  Sleep    3s

Passo 4 - Digitar um e-mail
  Wait Until Element Is Visible    locator=${emailInput}
  Input Text                       locator=${emailInput}  text=testernildodasilva@qa.coders.com.br
  Sleep    3s

Passo 5 - Digitar uma senha
  Wait Until Element Is Visible    locator=${senhaInput}
  Input Text                       locator=${senhaInput}  text=TesternildoQaCoders@10
  Sleep    3s

Passo 6 - Escolher perfil de usuário administrador
    Wait Until Element Is Visible    locator=${administradorCheckbox}
    Select Checkbox                  locator=${administradorCheckbox}
    Sleep    3s

Passo 7 - Clicar em cadastrar
    Wait Until Element Is Visible    locator=${cadastrarButton}
    Click Button                     locator=${cadastrarButton}
    Sleep    5s