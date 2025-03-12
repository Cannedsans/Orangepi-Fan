Aqui está a versão aprimorada e profissional do seu texto em português:

---

# Instalação de uma Ventoinha na Orange Pi Zero 3

## Requisitos

- **1 ventoinha 5V 40mm**  
- **1 transistor NPN** (recomendado: BC338)  

## Conexão Elétrica

1. **Conexões do Transistor**:
   - **Coletor**: Conecte ao **GND** da ventoinha.
   - **Emissor**: Conecte ao **GND** da Orange Pi Zero 3.
   - **Base**: Conecte ao pino **PC10** (conforme o pinout oficial da Orange Pi).

2. **Conexões de Energia**:
   - Conecte o pino **5V** da ventoinha ao pino **5V** da Orange Pi.  
     - Recomenda-se usar o pino **5V - IN/OUT**, pois ele está diretamente conectado à fonte de alimentação, evitando instabilidades.

![Pinout da Orange Pi Zero 3](https://lh4.googleusercontent.com/proxy/njXWQMmeFZxeZAsP1BXV1Niu8hTMe-to3ukp4wKiUOax4-u0lBHouYH4FHbZMWmMWS9VhVvS6P7HTfuYJ4590b4HlhGuLuX7Hnwg-HPpAAcSZw)

## Instalação

Após concluir as conexões elétricas, instale o serviço de controle da ventoinha usando o script de instalação.

1. **Conceda Permissões de Execução**:
   ```bash
   sudo chmod +x ./install
   ```

2. **Execute o Script de Instalação**:
   ```bash
   ./install
   ```

Após seguir esses passos, a ventoinha estará totalmente operacional na sua Orange Pi Zero 3.

---

### Observações:
- Certifique-se de que todas as conexões estejam seguras para evitar curtos-circuitos ou danos à placa.
- Confira o pinout para garantir que o pino GPIO correto (PC10) seja utilizado.
