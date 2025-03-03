# Bitcoin Price Monitor
Bitcoin Price Monitor é um projeto simples em Ruby que consulta APIs para monitorar o preço do Bitcoin em diferentes moedas (USD e BRL) e exibe os preços de forma contínua. O projeto utiliza as APIs públicas da CoinGecko e Binance para obter os preços.

# Tecnologias
**Ruby**: Linguagem de programação principal.  
**Net**::HTTP: Biblioteca para fazer requisições HTTP.  
**JSON**: Biblioteca para manipulação de dados em formato JSON.  
**Pry**: Utilitário de depuração (opcional, para inspeção de dados).   

# Funcionalidade
O projeto consulta o preço do Bitcoin em USD da API da CoinGecko.  
Também consulta o preço do Bitcoin em BRL da API da Binance.  
Exibe os preços na tela em tempo real e a cada 4 segundos faz uma nova consulta.  

# Estrutura do Código
**Bitcoin Class**: A classe Bitcoin tem métodos para inicializar a URL, buscar os preços de Bitcoin em USD e BRL, e exibir esses valores.  
**API Calls**: O método fetch_bitcoin_price faz a requisição para a API da CoinGecko para obter o preço em USD, enquanto o método fetch_bitcoin_price_real faz a requisição à API da Binance para obter o preço em BRL.   

# Exemplo de Saída
A cada 4 segundos, o script irá imprimir o preço do Bitcoin em USD e BRL na tela:

```bash
Copiar
O preço atual do Bitcoin em dolar é 50000.00
O preço atual do Bitcoin em reais é 250000.00
```  

