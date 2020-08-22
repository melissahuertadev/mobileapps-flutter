import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '';
const apiCoinUrl = 'https://rest-sandbox.coinapi.io/v1/exchangerate';

//https://rest-sandbox.coinapi.io/v1/exchangerate/BTC/USD?apikey=

class CoinData {
  Future getCoinData(String coin, String currency) async {
    var url = '$apiCoinUrl/$coin/$currency?apikey=$apiKey';

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      double rate = decodedData['rate'];

      return rate.toStringAsFixed(0);
    } else {
      print(response.statusCode);
    }
  }
}
