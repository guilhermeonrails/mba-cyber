# Endereçamento IP (IPv4)

Para que dois computadores conversem, eles precisam saber "onde" o outro está. Na internet, esse endereço é o IP (Internet Protocol).

## Estrutura do IPv4

Um endereço IPv4 é formado por 4 blocos de números (octetos) que vão de 0 a 255.
Exemplo: `192.168.1.15`

O endereço IP possui duas partes principais:
1. **Identificador da Rede:** Qual rua o computador mora.
2. **Identificador do Host:** Qual o número da casa nessa rua.

Quem define onde termina a rede e onde começa o host? A **Máscara de Sub-rede**.

## A Máscara de Sub-rede

A máscara tem o mesmo formato do IP (ex: `255.255.255.0`).
- Onde for `255`, aquela parte do IP representa a REDE.
- Onde for `0`, aquela parte do IP representa o HOST.

**Exemplo Prático:**
- **IP:** `192.168.1.15`
- **Máscara:** `255.255.255.0`
- Isso significa que a rede é `192.168.1.xxx` e este computador específico é o número `15`. Qualquer outro computador com IP `192.168.1.xxx` (como o 16 ou o 20) estará na mesma rede local e eles conseguirão conversar diretamente (através de um switch). Se quiserem falar com a rede `10.0.0.xxx`, precisarão passar por um Roteador.

## Classes e IPs Reservados

No passado, os IPs eram divididos em classes (A, B, C). Hoje, o modelo é mais flexível (CIDR), mas os conceitos permanecem:
- **Redes Privadas:** IPs que você pode usar na sua casa/empresa livremente (ex: `192.168.x.x`, `10.x.x.x`). Eles não são roteáveis na internet pública.
- **Redes Públicas:** IPs únicos na internet, gerenciados e comprados.

---

## 💻 Prática: Adicionando IPs no Linux

No Linux, podemos adicionar múltiplos IPs a uma mesma placa de rede, criando "redes virtuais" na nossa máquina.
Rode o script `04-config-ip.sh` para ver isso em ação.
