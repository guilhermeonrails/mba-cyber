#!/bin/bash
# Script para Aula 8: Portas e Serviços
# Objetivo: Utilizar o Nmap para identificar portas abertas em um servidor remoto

echo "============================================="
echo "🚪 ESCANEANDO PORTAS E SERVIÇOS"
echo "============================================="
echo "Vamos escanear o nosso servidor alvo na rede (api-server)"
echo "para ver se há alguma porta aberta e descobrir que serviço está rodando."
echo ""

echo "[Executando o Nmap]"
# nmap: Escaneia as portas do alvo.
# api-server: o nome do nosso container alvo na rede Docker.
# Pode demorar alguns segundinhos.
nmap api-server
echo ""

echo "============================================="
echo "Observe na coluna 'PORT' o número da porta e o protocolo (ex: 5000/tcp)."
echo "Na coluna 'STATE', deve estar 'open'."
echo "Na coluna 'SERVICE', o Nmap tenta adivinhar o que é."
echo ""

echo "Dica: Como encontramos um serviço aberto, vamos tentar conversar com ele!"
echo "Para testar a comunicação com a API encontrada, execute manualmente:"
echo "curl http://api-server:5000"
echo "============================================="
