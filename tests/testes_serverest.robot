*** Settings ***
Resource  ../resources/testes_recursos_serverest.resource
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Cenário de Teste : Cadastro de usuário administrador 
  Passo 1 - Acessar a página de login ServeRest
  Passo 2 - Clicar em cadastre-se 
  Passo 3 - Digitar um nome 
  Passo 4 - Digitar um e-mail
  Passo 5 - Digitar uma senha
  Passo 6 - Escolher perfil de usuário administrador
  Passo 7 - Clicar em cadastrar
