#!/bin/bash
# Script para Aula 2: Modelo OSI
# Objetivo: Capturar um pacote real e identificar dados das camadas

echo "============================================="
echo "📦 ANÁLISE DE PACOTES E MODELO OSI"
echo "============================================="
echo "Vamos disparar 1 pacote (ping) para o Google (8.8.8.8)"
echo "e escutar o tráfego usando o tcpdump."
echo "Iremos exibir os endereços MAC (Camada 2) e IPs (Camada 3)."
echo ""

# tcpdump:
# -c 2 : Captura apenas 2 pacotes (ida e volta)
# -e : Imprime cabeçalhos da Camada de Enlace (MAC Addresses)
# -n : Não converte IPs e Portas para nomes (mais rápido e fácil de ler)
# icmp : Filtra apenas pacotes do protocolo ICMP (usado pelo ping)

# Dispara o ping em background
ping -c 1 8.8.8.8 > /dev/null 2>&1 &

echo "Capturando os pacotes..."
tcpdump -c 2 -e -n icmp 2>/dev/null
echo ""
echo "============================================="
echo "Observe na saída:"
echo "Camada 2 (Enlace): Endereços no formato xx:xx:xx:xx:xx:xx (MAC)"
echo "Camada 3 (Rede): Endereços IP de origem e destino (ex: seu IP > 8.8.8.8)"
echo "Camada 7 (Aplicação, indiretamente): O ICMP echo request/reply."
