# Modelo OSI em Profundidade

O Modelo OSI (Open Systems Interconnection) é um modelo conceitual criado para padronizar como os diferentes sistemas de computadores devem se comunicar. Pense nele como a "planta baixa" de um prédio.

## As 7 Camadas do Modelo OSI

O modelo divide a comunicação de rede em 7 camadas empilhadas. Quando você envia uma mensagem, os dados descem as camadas (Encapsulamento). Quando você recebe, os dados sobem as camadas (Desencapsulamento).

1. **Camada Física (Physical):** É o cabo, o sinal de luz, a onda de rádio. Transmite "bits" (0s e 1s) puros.
2. **Camada de Enlace (Data Link):** Organiza os bits em "quadros" (frames). É aqui que vive o Switch e o endereço físico (MAC Address).
3. **Camada de Rede (Network):** Determina o melhor caminho para os dados chegarem ao destino. É aqui que vive o Roteador e o endereço IP. Trabalha com "pacotes".
4. **Camada de Transporte (Transport):** Garante que a mensagem chegue corretamente ou rapidamente (TCP/UDP). Trabalha com "segmentos" e "portas".
5. **Camada de Sessão (Session):** Abre, mantém e fecha a comunicação (sessão) entre dois computadores.
6. **Camada de Apresentação (Presentation):** Formata, criptografa e compacta os dados (ex: converter texto pra ASCII, criptografia SSL/TLS).
7. **Camada de Aplicação (Application):** A interface com o usuário final e os programas. É onde operam os protocolos HTTP (navegador), SMTP (email), etc.

## Encapsulamento

Imagine enviar uma carta:
1. Você escreve a carta (Aplicação/Apresentação/Sessão).
2. Coloca num envelope e define a urgência (Transporte).
3. Escreve o CEP de destino e o seu (Rede - IP).
4. O carteiro coloca num malote do bairro (Enlace - MAC).
5. O caminhão dos correios transporta fisicamente (Física).

Ao chegar, o processo é invertido (Desencapsulamento) até a pessoa ler a carta.

---

## 💻 Prática: Vendo as camadas em ação

Vamos usar a ferramenta `tcpdump` (um farejador de pacotes) no terminal para capturar uma comunicação real e ver os dados de cabeçalho das camadas de Enlace (MAC), Rede (IP) e Transporte (Portas).
Rode o script `02-analise-osi.sh`.
