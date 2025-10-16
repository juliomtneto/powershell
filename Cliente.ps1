# Este script fará um cadastro das informações do cliente
Clear-Host

"BEM VINDO À PIZZARIA"
"-- CADASTRO DO CLIENTE --"
Start-Sleep -Seconds 1

# Start-Sleep irá dar uma pausa na execução do script por um tempo determinado.

$nome = Read-Host "Qual seu nome?"

# Guarda seu nome na variável $nome

$hora = (Get-Date).Hour

# Guarda apenas a hora do dia na variável $hora

if ($hora -le 6 -and $hora -ge 18) {Write-Output "Boa noite $nome!"}
    elseif ($hora -ge 12 -and $nome -lt 18) {Write-Output "Boa tarde $nome!"}
else { Write-Output "Bom dia $nome!"}

# Irá retornar um cumprimento de acordo com a hora do dia. 
# Estude sobre o condicional IF 
Start-Sleep -Seconds 2
Clear-Host
"INFORME SUAS INFORMAÇÕES PESSOAIS"
$idade = Read-Host "Qual sua idade?"
$cidade =  Read-Host "Qual sua cidade?"
$sexo =  Read-Host "Qual seu sexo?"

Start-Sleep -Seconds 1
Clear-Host
&{
"CADASTRO REALIZADO COM SUCESSO!"
"NOME: $nome" 
"IDADE: $idade" 
"CIDADE: $cidade"
"SEXO: $sexo"
} > .\cliente.txt

Get-Content .\cliente.txt
