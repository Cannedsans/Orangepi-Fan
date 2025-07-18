# Instalando uma Ventoinha na Orange Pi Zero 3

## Requisitos

- 1x Ventoinha 5V 40mm  
- 1x Transistor NPN (recomendado: BC338)  
- 1x Resistor de 1kΩ (obrigatório para a base do transistor)

## Conexão Elétrica

### 1. Configuração do Transistor (NPN)

É necessário usar um resistor de 1kΩ entre o pino PC10 e a base do transistor para limitar a corrente e proteger o pino da Orange Pi.

Diagrama:

Orange Pi (PC10) ───[resistor 1kΩ]───► B (Base)  
                                         │  
                                      [NPN]  
                                         │  
    Ventoinha (–) ──────────────────────► C (Coletor)  
                                         │  
GND da Orange Pi ──────────────────────► E (Emissor)  

Ventoinha (+) ────────────────────────► 5V (da Orange Pi)

- Coletor (C) → Conecte ao fio negativo (-) da ventoinha  
- Emissor (E) → Conecte ao GND da Orange Pi  
- Base (B) → Conecte ao pino PC10 através de um resistor de 1kΩ

### 2. Alimentação

- Ventoinha (+) → Conecte ao pino de 5V da Orange Pi  
  - Recomenda-se usar o pino 5V IN/OUT, que está ligado diretamente à fonte de alimentação

Referência: [https://github.com/debajyotisarkarhome/PWM-Based-RPi-Fan](https://github.com/debajyotisarkarhome/PWM-Based-RPi-Fan)

Pinagem de referência:  
![Pinagem da Orange Pi Zero 3](https://lh4.googleusercontent.com/proxy/njXWQMmeFZxeZAsP1BXV1Niu8hTMe-to3ukp4wKiUOax4-u0lBHouYH4FHbZMWmMWS9VhVvS6P7HTfuYJ4590b4HlhGuLuX7Hnwg-HPpAAcSZw)

## Instalação

Após concluir as conexões, instale o serviço de controle da ventoinha com o script incluído.

1. Dê permissão de execução ao script:
   ```bash
   sudo chmod +x ./install
   ```
    Execute o script de instalação:
   ```bash
    ./install
   ``` 
