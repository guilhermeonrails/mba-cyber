#!/bin/bash
# Script para Aula 9: Troubleshooting
# Objetivo: Realizar um check-up geral na rede

echo "============================================="
echo "🩺 CHECK-UP DE REDE - LINUX"
echo "============================================="

echo "[Passo 1] Qual o nosso IP principal?"
ip -br a | grep UP
echo ""

echo "[Passo 2] Qual é a nossa rota padrão (Gateway/Roteador)?"
ROTEADOR=$(ip route | grep default | awk '{print $3}')
echo "Gateway: $ROTEADOR"
echo ""

echo "[Passo 3] Consigo falar com o meu Roteador?"
if ping -c 1 -W 1 $ROTEADOR &>/dev/null; then
    echo "✅ Roteador alcançável!"
else
    echo "❌ Falha ao alcançar o roteador. Verifique o cabo ou Wi-Fi."
fi
echo ""

echo "[Passo 4] Consigo resolver nomes (DNS)? (Pingando google.com)"
if ping -c 1 -W 2 google.com &>/dev/null; then
    echo "✅ Internet e DNS funcionando!"
else
    echo "❌ Falha ao resolver nome. Verifique sua conexão com a Internet ou servidor DNS."
fi
echo ""

echo "[Passo 5] Quais serviços estão escutando conexões nesta máquina agora?"
# ss: t(tcp) u(udp) l(listening) n(numeric)
ss -tuln
echo ""

echo "============================================="
echo "🎉 Curso Prático Concluído!"
echo "Você agora conhece os fundamentos de rede e como utilizar o Linux para diagnósticos."
