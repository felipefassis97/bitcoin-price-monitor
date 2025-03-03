require 'net/http'  # Carrega a biblioteca para fazer requisições HTTP
require 'json'      # Carrega a biblioteca para manipulação de JSON
require 'pry'       # Carrega o pry para depuração interativa

class Bitcoin
  def initialize(url)  # Método que inicializa a URL
    @url = url         # Armazena a URL passada no objeto
  end

  def actual_price
    # Exibe o preço atual do Bitcoin chamando o método privado
    puts "O preco atual do Bitcoin em dolar é #{fetch_bitcoin_price}"
  end

  def actual_price_real
    # Exibe o preço atual do Bitcoin chamando o método privado
    puts "O preco atual do Bitcoin em reais é #{fetch_bitcoin_price_real}"
  end

  private

  def fetch_bitcoin_price
    url = URI(@url)  # Converte a URL para o formato URI
    response = Net::HTTP.get(url)  # Faz a requisição HTTP GET
    data = JSON.parse(response)  # Converte a resposta JSON para hash Ruby
    
    return data['bitcoin']['usd']  # Retorna o preço do Bitcoin em USD
  end

  def fetch_bitcoin_price_real
    url = URI(@url)  # Converte a URL para o formato URI
    response = Net::HTTP.get(url)  # Faz a requisição HTTP GET
    data = JSON.parse(response)  # Converte a resposta JSON para hash Ruby
    
    return data['price']  # Retorna o preço do Bitcoin em Real
  end
end


loop do # Inicia um loop infinito
Bitcoin.new("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd").actual_price # Cria um objeto Bitcoin passando a URL da API e chama o método para mostrar o preço
sleep 4   # Pausa a execução do código por 4 segundos antes de fazer a próxima requisição

Bitcoin.new("https://api.binance.com/api/v3/ticker/price?symbol=BTCBRL").actual_price_real
sleep 4
end

#Resumo do Funcionamento:
#O código cria um objeto da classe Bitcoin e passa a URL da API Coingecko que fornece o preço atual do Bitcoin em dólares.
 # O método actual_price chama o método privado fetch_bitcoin_price, que faz a requisição HTTP à API.
  #A resposta da API é convertida de JSON para um hash Ruby, e o preço do Bitcoin em dólares é retornado e exibido na tela.
  #O processo é repetido a cada 4 segundos graças ao sleep 4 e o loop infinito.
  #Isso continuará acontecendo até que você interrompa o programa manualmente.