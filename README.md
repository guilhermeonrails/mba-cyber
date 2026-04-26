# 🌐 MBA USP ESALQ - Redes com Kali Linux

Este repositório foi criado para explorar os conceitos de redes de computadores, unindo a teoria fundamental a práticas "mão na massa" utilizando o terminal do Kali Linux.

---

## 🎯 Objetivo

Fornecer uma base sólida sobre como a Internet e as redes de computadores funcionam, capacitando alunos sem experiência prévia a diagnosticar problemas de rede e utilizar ferramentas clássicas do ecossistema Linux.

## 📂 Estrutura do Curso

O material está dividido em 9 aulas, organizadas em pastas sequenciais. Dentro de cada pasta você encontrará um `README.md` com a teoria e um script `.sh` com a atividade prática.

1. **[1-fundamentos-redes](./1-fundamentos-redes/):** O que é uma rede, componentes, LAN/WAN e meios físicos.
2. **[2-modelo-osi](./2-modelo-osi/):** Como a comunicação é dividida em 7 camadas lógicas.
3. **[3-modelo-tcp-ip](./3-modelo-tcp-ip/):** A arquitetura real da Internet e o caminho dos pacotes.
4. **[4-enderecamento-ipv4](./4-enderecamento-ipv4/):** A identidade dos computadores na rede.
5. **[5-introducao-ipv6](./5-introducao-ipv6/):** A evolução dos endereços IP.
6. **[6-protocolos-transporte](./6-protocolos-transporte/):** A batalha entre TCP (confiança) e UDP (velocidade).
7. **[7-protocolos-icmp](./7-protocolos-icmp/):** Como os computadores avisam sobre erros na rede.
8. **[8-portas-servicos](./8-portas-servicos/):** Como serviços paralelos funcionam no mesmo computador.
9. **[9-ferramentas-diagnostico](./9-ferramentas-diagnostico/):** O "canivete suíço" de rede do Linux para troubleshooting.

---

## 🚀 Como Utilizar Este Material

1. Abra seu terminal e acesse a pasta da aula que deseja estudar:
   ```bash
   cd 1-fundamentos-redes
   ```
2. Leia o conteúdo do arquivo **`README.md`** para entender o conceito teórico.
3. Altere a permissão com chmod
   ```bash
   chmod +x NomeDoArquivo.sh
   ```
4. Dê uma olhada no código do script prático e, em seguida, execute-o no terminal do seu container Linux:
   ```bash
   bash 01-mapeamento.sh
   ```
   ou
   ```bash
   ./01-mapeamento.sh
   ```

## 🛠️ Pré-requisitos
Para o melhor aproveitamento prático, é necessário ter um ambiente Linux (preferencialmente Kali) rodando em um Container Docker.
