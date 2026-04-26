#!/bin/bash
# Script para Aula 5: Introdução ao IPv6
# Objetivo: Identificar e testar conectividade IPv6

echo "============================================="
echo "🌐 TRABALHANDO COM IPV6"
echo "============================================="

echo "[1] Visualizando os endereços IPv6 da máquina:"
# O 'ip -6 a' filtra a saída apenas para mostrar endereços IPv6
ip -6 a
echo ""

echo "Observe o endereço '::1'. Ele é o equivalente ao '127.0.0.1' (localhost) no IPv4."
echo ""

echo "[2] Testando comunicação IPv6 local (ping no ::1):"
# O comando para pingar IPs versão 6 é o ping6 (ou ping -6)
ping6 -c 3 ::1
echo ""

echo "============================================="
echo "Dica: Para acessar um IP v6 no navegador de internet, você precisa colocá-lo entre colchetes."
echo "Exemplo: http://[2001:db8::1]/"
