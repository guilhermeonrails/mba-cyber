# Ferramentas de Diagnóstico em Linux

Você chegou à última prática! Aqui, vamos compilar e revisar o "canivete suíço" de ferramentas de rede que todo administrador de sistemas, desenvolvedor ou profissional de segurança deve conhecer ao operar um terminal Linux.

## O Kit Básico de Sobrevivência

### 1. Verificando as Placas e IPs
- **Antigo:** `ifconfig` (Faz parte do pacote net-tools, está caindo em desuso, mas muita gente ainda ama).
- **Novo:** `ip a` ou `ip addr` (Mais moderno, poderoso e recomendado).

### 2. Testando a Conectividade
- `ping [destino]`: Testa se o destino está vivo e se o caminho de ida e volta está livre.

### 3. Descobrindo por onde os dados passam
- **Linux Moderno:** `tracepath [destino]`
- **Tradicional:** `traceroute [destino]` ou `mtr [destino]` (MTR é incrível pois atualiza a tela em tempo real).

### 4. Verificando Conexões Abertas e Portas Ouvindo
Às vezes você quer saber: "Meu servidor web tá rodando mesmo? Em qual porta ele tá escutando?".
- **Antigo:** `netstat -tulnp` (Mostra conexões ativas, portas ouvindo e o nome do programa/PID).
- **Novo:** `ss -tulnp` (Mais rápido, faz a mesma coisa. As letras significam: **t**cp, **u**dp, **l**istening, **n**umeric(não resolve nomes), **p**rocess).

---

## 💻 Prática: Troubleshooting Completo

Vamos rodar um script que executa uma rotina básica de verificação do sistema quando há um possível problema de rede.
Rode o script `09-troubleshooting.sh`.
