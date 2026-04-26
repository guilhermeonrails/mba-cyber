#!/bin/bash
# Script para Aula 4: Endereçamento IPv4
# Objetivo: Configurar um IP manual em uma interface

echo "============================================="
echo "⚙️ CONFIGURANDO IP NO LINUX"
echo "============================================="

# Interface virtual loopback (lo) é padrão em sistemas Linux
IFACE="lo"
NOVO_IP="10.99.99.1/24" # /24 equivale a máscara 255.255.255.0

echo "1. Adicionando o IP $NOVO_IP na interface $IFACE..."
# Requer permissões de root. No nosso container já somos root.
ip addr add $NOVO_IP dev $IFACE 2>/dev/null
echo ""

echo "2. Verificando os IPs da interface $IFACE:"
ip addr show dev $IFACE
echo ""

echo "3. Testando comunicação com o nosso novo IP (ping nele mesmo):"
ping -c 2 10.99.99.1
echo ""

echo "4. Limpando a configuração (removendo o IP)..."
ip addr del $NOVO_IP dev $IFACE 2>/dev/null
echo "✅ Concluído!"
