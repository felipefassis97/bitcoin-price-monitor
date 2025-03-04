require 'net/http' 
require 'json'      
require 'pry'       

class Bitcoin
  def initialize(url)  
    @url = url     
  end

  def actual_price
    puts "O preco atual do Bitcoin em dolar é #{fetch_bitcoin_price}"
  end

  def actual_price_real
    puts "O preco atual do Bitcoin em reais é #{fetch_bitcoin_price_real}"
  end

  private

  def fetch_bitcoin_price
    url = URI(@url)  
    response = Net::HTTP.get(url)  
    data = JSON.parse(response) 
    
    return data['bitcoin']['usd']  
  end

  def fetch_bitcoin_price_real
    url = URI(@url)  
    response = Net::HTTP.get(url)  
    data = JSON.parse(response)  
    
    return data['price']  
  end
end


loop do 
Bitcoin.new("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd").actual_price 
sleep 4   
Bitcoin.new("https://api.binance.com/api/v3/ticker/price?symbol=BTCBRL").actual_price_real
sleep 4
end
