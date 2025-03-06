# Bitcoin Price Monitor

Bitcoin Price Monitor is a Ruby project that queries APIs to monitor the price of Bitcoin in different currencies (USD and BRL) and continuously displays the prices. The project uses the public APIs from CoinGecko and Binance to fetch the prices.

## Technologies
- **Ruby**: Main programming language.
- **Net::HTTP**: Library for making HTTP requests.
- **JSON**: Library for handling data in JSON format.
- **Pry**: Debugging utility (optional, for data inspection).

## Functionality
- The project queries the Bitcoin price in USD from the CoinGecko API.
- It also queries the Bitcoin price in BRL from the Binance API.
- The prices are displayed on the screen in real-time, and every 4 seconds, a new query is made.

## Code Structure
- **Bitcoin Class**: The Bitcoin class has methods to initialize the URL, fetch Bitcoin prices in USD and BRL, and display these values.
- **API Calls**: The `fetch_bitcoin_price` method makes the request to the CoinGecko API to get the price in USD, while the `fetch_bitcoin_price_real` method queries the Binance API to get the price in BRL.

## Example Output
Every 4 seconds, the script will print the price of Bitcoin in USD and BRL on the screen:

```bash
Copy
The current Bitcoin price in USD is 50000.00
The current Bitcoin price in BRL is 250000.00
```  

