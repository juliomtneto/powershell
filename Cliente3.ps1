# parte 3: vamos aprimorar a idade, trocando pela data de nascimento e criando uma validação.
# vide linha 37

Clear-Host

$caminho = ".\clientes"
if (!(Test-Path -PathType Container $caminho)){
    $null = New-Item -ItemType Directory -Path $caminho
} 
# irá criar a pasta .\clientes se ela não existir

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
$cpf = Read-Host "Qual seu CPF"
function teste-data {
    param ($dataEntrada)
    return  $dataEntrada -as [datetime] -ne $null
}
do {
    $dataEscrita = Read-Host -Prompt "Digite sua data de nascimento como em 30/12/2005"
} until (teste-data -dataEntrada $dataEscrita)
# criamos uma função para validar a data num loop 'do until. Não entraremos no pormenor desse trecho de código. Estude 

$idade = Read-Host "Qual sua idade?"
$cidade =  Read-Host "Qual sua cidade?"
do {$sexo = Read-Host -Prompt "Qual seu sexo? Digite [1] para Masculino e [2] para Feminino"  
if ($sexo -ne 1 -and $sexo -ne 2) {
    Write-Host "Digite apenas o número 1 ou 2"
}
} while ($sexo -ne 1 -and $sexo -ne 2)
# aqui usamos um loop do while com um if para validar a entrada.

Start-Sleep -Seconds 1
Clear-Host
&{
"CADASTRO REALIZADO COM SUCESSO!"
"NOME: $nome" 
"CPF: $cpf"
"IDADE: $idade" 
"CIDADE: $cidade"
"SEXO: $sexo"
} > .\clientes\$cpf
# armazenamos as informações em variáveis e salvamos num arquivo específico na subpasta.

Get-Content .\clientes\$cpf