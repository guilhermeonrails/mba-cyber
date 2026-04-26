#!/bin/bash
# Script para Aula 1: Fundamentos de Redes
# Objetivo: Mapear interfaces e rotas do sistema local

echo "============================================="
echo "🔍 MAPEAMENTO DA REDE LOCAL"
echo "============================================="
echo ""

echo "[1] Interfaces de Rede Disponíveis:"
# O comando 'ip addr' ou 'ip a' lista todas as placas de rede do seu computador.
# Cada placa possui um nome (ex: eth0, lo, wlan0) e um endereço associado.
ip -c a
echo ""

echo "[2] Tabela de Roteamento (Caminhos Conhecidos):"
# O comando 'ip route' mostra por onde o seu computador envia os pacotes.
# O "default via" é o seu roteador (gateway padrão) que te leva para a internet.
ip -c route
echo ""

echo "============================================="
echo "✅ Concluído! Identifique acima o IP do seu roteador (gateway)."
