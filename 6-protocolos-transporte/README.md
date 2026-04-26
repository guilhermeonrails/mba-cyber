# Protocolos de Transporte: TCP e UDP

A Camada 4 (Transporte) lida com como a informação chega lá, não o caminho que toma. Aqui, os reis são o **TCP** e o **UDP**.

## TCP (Transmission Control Protocol)

É o protocolo **Confiável** e **Orientado à Conexão**.

- **Como funciona:** Antes de mandar dados, ele liga para o destino ("Alô, você tá aí? Vou mandar 10 pacotes"). Ele enumera os pacotes. Se um pacote se perde no meio da internet, o destino avisa e o TCP manda de novo. No final, ele garante que tudo chegou perfeitamente em ordem.
- **Desvantagem:** É mais lento devido a toda essa verificação e confirmação.
- **Casos de Uso:** Navegação Web (HTTP), E-mails, Transferência de arquivos, onde não pode faltar nem um pedaço da informação.

## UDP (User Datagram Protocol)

É o protocolo **Rápido** e **Não Confiável**.

- **Como funciona:** Ele não pergunta se você está lá. Ele apenas pega os dados e arremessa o mais rápido possível pela rede. Se perder pacotes no caminho? Problema seu, a vida segue, ele manda o próximo.
- **Vantagem:** Muito veloz e não congestiona a rede com "confirmações de recebimento".
- **Casos de Uso:** Streaming de vídeo ao vivo (Netflix, YouTube), Jogos online, Chamadas de vídeo (Skype/Zoom). Se perder um pacote, você vê um pixel falhar na tela ou um "lag" no jogo, mas a transmissão continua em tempo real.

---

## 💻 Prática: Simulando TCP e UDP

Nós vamos usar a ferramenta `nc` (Netcat), que permite criar conexões TCP e UDP cruas através do terminal para vermos a diferença na prática.
Rode o script `06-tcp-udp.sh`.
