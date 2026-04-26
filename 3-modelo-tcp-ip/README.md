# Modelo TCP/IP e Arquitetura da Internet

Enquanto o modelo OSI é teórico e detalhista, o **Modelo TCP/IP** é o que realmente foi implementado e faz a Internet funcionar hoje.

## As 4 Camadas do Modelo TCP/IP

O modelo TCP/IP condensou as 7 camadas do OSI em apenas 4, focando na praticidade:

1. **Acesso à Rede (Equivale às camadas Física e Enlace do OSI):** Lida com o hardware, cabos e placas de rede.
2. **Internet (Equivale à camada de Rede do OSI):** Responsável por rotear pacotes através de diferentes redes usando IPs. (Aqui brilha o protocolo IP).
3. **Transporte (Equivale à camada de Transporte do OSI):** Garante a entrega dos dados (TCP) ou foca na velocidade (UDP).
4. **Aplicação (Equivale às camadas Aplicação, Apresentação e Sessão do OSI):** Onde os programas operam (HTTP, FTP, SSH).

## Arquitetura da Internet

A internet não é uma nuvem mágica, é uma "Rede de Redes".
- **ISPs (Provedores de Internet):** Empresas como Claro, Vivo, Oi. Elas conectam a sua casa à rede deles.
- **Backbone (Espinha Dorsal):** Os ISPs se conectam a cabos submarinos e redes intercontinentais de altíssima velocidade. É por essas vias gigantescas que o tráfego global flui.

Quando você acessa um site no Japão, o seu pacote de dados pula do seu Roteador -> Seu Provedor -> Backbone Nacional -> Cabos Submarinos -> Backbone no Japão -> Provedor do Japão -> Servidor Japonês.

---

## 💻 Prática: Mapeando a Internet

Como sabemos por onde os dados passam até chegar ao destino? Existe uma ferramenta chamada `traceroute` (ou `tracepath`). Ela envia pacotes com um "tempo de vida" progressivo para descobrir cada roteador no caminho.
Rode o script `03-internet-routing.sh`.
