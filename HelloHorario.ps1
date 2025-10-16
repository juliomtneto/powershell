# Este script perguntará o seu nome e retornará com um cumprimento em seu nome de acordo com o horário.

$nome = Read-Host "Qual seu nome?"

# Guarda seu nome na variável $nome

$hora = (Get-Date).Hour

# Guarda apenas a hora do dia na variável $hora

if ($hora -le 6 -and $hora -ge 18) {Write-Output "Boa noite $nome!"}
    elseif ($hora -ge 12 -and $nome -lt 18) {Write-Output "Boa tarde $nome!"}
else { Write-Output "Bom dia $nome"}

# Irá retornar um cumprimento de acordo com a hora do dia. 
# Estude sobre o condicional IF 