# Este script perguntará o seu nome e retornará com um cumprimento em seu nome.

$nome = Read-Host "Qual seu nome?"

# Guarda seu nome na variável $nome

Write-Output = "Ola $nome!" | Out-File .\Arquivo.txt

# o | (pipe) Out-File irá exportar a saída para o arquivo.
# ATENÇÃO: O arquivo será sobreescrito. Use -Append para acrescentar.

