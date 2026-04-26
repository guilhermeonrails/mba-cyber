# Fundamentos de Redes e Comunicação

Bem-vindo à primeira aula! O objetivo aqui é entender o básico de como os computadores conversam entre si.

## 1. O que é uma Rede de Computadores?

Uma rede de computadores é um conjunto de dispositivos (como computadores, smartphones, servidores) conectados entre si para compartilhar recursos e informações.

### Componentes Principais:
- **Hosts (Nós):** Qualquer dispositivo final conectado à rede (seu PC, seu celular).
- **Switches:** Equipamentos que conectam vários dispositivos em uma mesma rede local, repassando a informação apenas para o destino correto.
- **Roteadores:** Equipamentos que conectam *diferentes* redes. Por exemplo, o roteador da sua casa conecta a sua rede local (LAN) à rede global (Internet).

## 2. Tipos de Rede

As redes são classificadas principalmente pela sua abrangência geográfica:
- **LAN (Local Area Network):** Redes locais. Exemplo: A rede da sua casa ou do seu escritório.
- **MAN (Metropolitan Area Network):** Redes que conectam uma cidade inteira. Exemplo: A rede de um provedor de internet local.
- **WAN (Wide Area Network):** Redes de longa distância. Exemplo: A Internet (a maior WAN do mundo).
- **WLAN (Wireless LAN):** Uma rede local sem fio (seu Wi-Fi).

## 3. Meios de Transmissão

Como os dados viajam de um lugar para o outro?
- **Cabos de Cobre (Par Trançado):** Os famosos cabos de rede azuis (RJ45). Baratos e práticos para redes locais.
- **Fibra Óptica:** Usam luz para transmitir dados. São imunes a interferências elétricas e atingem velocidades e distâncias incríveis.
- **Sem Fio (Wireless):** Usam ondas de rádio (Wi-Fi, Bluetooth). Práticos, mas sofrem mais com interferências e obstáculos (paredes).

---

## 💻 Prática: Mapeando a nossa rede

Vamos olhar para a nossa própria máquina e descobrir como ela está conectada. Rode o script `01-mapeamento.sh` para ver suas interfaces de rede e rotas!
