#!/bin/bash
# Script para Aula 6: TCP e UDP
# Objetivo: Criar conexões TCP e UDP locais

echo "============================================="
echo "⚡ TCP vs UDP NA PRÁTICA"
echo "============================================="

# 1. Testando TCP
echo "[Iniciando Teste TCP]"
echo "Abrindo um servidor TCP ouvindo na porta 4444 (background)..."
# nc -l (listen) -p (porta)
nc -l -p 4444 > tcp_recebido.txt &
SERVER_PID=$!
sleep 1

echo "Conectando ao servidor TCP e enviando a mensagem 'Ola via TCP'..."
echo "Ola via TCP" | nc localhost 4444
sleep 1
echo "Mensagem recebida no servidor:"
cat tcp_recebido.txt
rm tcp_recebido.txt
echo ""

# 2. Testando UDP
echo "[Iniciando Teste UDP]"
echo "Abrindo um servidor UDP ouvindo na porta 5555 (background)..."
# nc -u (udp) -l (listen) -p (porta)
nc -u -l -p 5555 > udp_recebido.txt &
SERVER_PID2=$!
sleep 1

echo "Conectando ao servidor UDP e enviando a mensagem 'Ola via UDP'..."
echo "Ola via UDP" | nc -u localhost 5555
sleep 1
echo "Mensagem recebida no servidor:"
cat udp_recebido.txt
rm udp_recebido.txt
echo ""

# Limpeza
kill $SERVER_PID 2>/dev/null
kill $SERVER_PID2 2>/dev/null
echo "✅ Testes concluídos."
