#!/bin/bash
# Script para Aula 3: TCP/IP e Arquitetura
# Objetivo: Traçar a rota até um servidor na internet

TARGET="1.1.1.1" # Servidor DNS da Cloudflare

echo "============================================="
echo "🌍 MAPEANDO A ROTA DA INTERNET"
echo "============================================="
echo "Vamos rastrear o caminho desde o seu PC até o servidor da Cloudflare ($TARGET)."
echo "Cada linha (salto) representa um roteador (ou gateway) no meio do caminho."
echo ""

# tracepath: Rastreia o caminho até a rede de destino. Similar ao traceroute.
tracepath -m 15 $TARGET

echo ""
echo "============================================="
echo "Dica de leitura:"
echo "1. O primeiro salto geralmente é o IP do roteador da sua casa."
echo "2. Os próximos saltos são os roteadores do seu Provedor de Internet (ISP)."
echo "3. Depois, você entra no backbone até chegar ao destino."
