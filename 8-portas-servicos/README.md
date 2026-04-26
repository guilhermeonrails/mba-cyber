# Portas, Serviços e Aplicações

Nós já sabemos que o endereço IP identifica **qual computador** na rede nós queremos alcançar. Mas um servidor pode rodar vários serviços ao mesmo tempo (um site, um banco de dados, um servidor de e-mail). 
Como o computador sabe para qual programa entregar os dados? Através das **Portas Lógicas**.

## O Conceito de Portas Lógicas

Imagine o Endereço IP como o endereço de um prédio comercial de 65.535 andares.
- **Endereço IP:** Rua das Redes, 123 (O Prédio / O Servidor).
- **Porta:** Sala 80 (O Escritório / O Serviço).

Existem portas numeradas de **1 a 65535**. Para evitar confusão, existe uma padronização global (feita pela IANA) onde serviços famosos usam sempre as mesmas portas (conhecidas como *Well-Known Ports*).

### Serviços Comuns e Suas Portas:
- **Porta 80 (HTTP):** Navegação web sem criptografia.
- **Porta 443 (HTTPS):** Navegação web segura (com cadeadinho).
- **Porta 22 (SSH):** Acesso remoto seguro ao terminal (muito usado em Linux).
- **Porta 21 (FTP):** Transferência de arquivos.
- **Porta 53 (DNS):** Traduz nomes (ex: `google.com`) para números IP.

Quando você digita `http://site.com`, o seu navegador, sem você ver, está dizendo: "Conecte no IP do site.com, na Porta 80".

---

## 💻 Prática: Mapeamento de Portas

Como profissionais de rede (ou segurança), precisamos saber quais "salas estão abertas" num prédio. No Linux, a principal ferramenta para isso é o `nmap` (Network Mapper).

No cenário desta aula, nós temos um outro servidor (container) chamado `api-server` rodando em nossa rede de forma silenciosa. 
Rode o script `08-identificacao.sh` para escanear esse servidor remoto através da rede e descobrir qual porta ele deixou aberta!
