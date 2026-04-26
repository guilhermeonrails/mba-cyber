#!/bin/bash
# Script para Aula 7: ICMP e Diagnóstico
# Objetivo: Realizar testes de latência e tamanho de pacote

ALVO="1.1.1.1" # Cloudflare

echo "============================================="
echo "🛠️  TESTES AVANÇADOS COM PING"
echo "============================================="
echo "Alvo dos testes: $ALVO"
echo ""

echo "[1] Teste Rápido (3 pacotes padrão):"
# -c 3 = Conta 3 pacotes
ping -c 3 $ALVO
echo ""

echo "[2] Teste de Carga e MTU (Pacotes Grandes):"
# Pacotes normais têm 56 bytes. Vamos testar com 1500 bytes.
# Se a rede tiver problemas de fragmentação (MTU), este teste falha ou fica lento.
# -s 1500 = Tamanho do pacote
# -c 2 = Conta 2 pacotes
ping -s 1500 -c 2 $ALVO
echo ""

echo "[3] Teste de Velocidade/Inundação (Flood Ping):"
# ATENÇÃO: Requer permissão de root.
# -f = Flood (envia centenas de pacotes por segundo)
# -c 100 = Conta 100 pacotes apenas
# Útil para testar perda de pacotes sob estresse na rede local.
echo "Enviando 100 pacotes instantaneamente..."
ping -f -c 100 $ALVO
echo ""
echo "Verifique no final o '% packet loss' (percentual de perda de pacotes)."
echo "============================================="
