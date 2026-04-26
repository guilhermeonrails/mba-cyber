# Introdução ao IPv6

O IPv4 foi criado na década de 1970. Com o boom da internet e dos smartphones, os IPs da versão 4 acabaram (são cerca de 4 bilhões apenas). A solução para a escassez foi a criação do **IPv6**.

## Estrutura do IPv6

Enquanto o IPv4 tem 32 bits (4 blocos numéricos), o IPv6 possui **128 bits**. Isso gera uma quantidade absurdamente grande de endereços (340 undecilhões).

Formato do IPv6:
Ele é escrito em blocos hexadecimais (letras de A-F e números de 0-9), separados por dois pontos (`:`).
Exemplo: `2001:0db8:85a3:0000:0000:8a2e:0370:7334`

### Regras de Simplificação:
Para não escrevermos endereços tão longos, existem regras de abreviação:
1. Omitir zeros à esquerda: `0db8` vira `db8`.
2. Omitir blocos inteiros de zero (uma única vez): `0000:0000` vira `::`.
O endereço acima simplificado: `2001:db8:85a3::8a2e:370:7334`

## Diferenças: IPv4 vs IPv6

1. **Tamanho e Formato:** De 32 bits (decimal) para 128 bits (hexadecimal).
2. **NAT (Network Address Translation):** No IPv4, precisamos do NAT (aquele "truque" do seu roteador) para compartilhar 1 IP público com todos os dispositivos da sua casa. No IPv6, isso não é mais necessário; todo dispositivo do planeta pode ter seu próprio IP público.
3. **Desempenho:** O cabeçalho do IPv6 é mais limpo, o que facilita e agiliza o trabalho dos roteadores.

---

## 💻 Prática: Testando o IPv6

Mesmo que sua operadora de internet ainda não forneça IPv6, todos os sistemas operacionais modernos (incluindo nosso Linux) já possuem interfaces locais configuradas com IPv6 para testes internos.
Rode o script `05-teste-ipv6.sh`.
