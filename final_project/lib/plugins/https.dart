import 'dart:convert';

Future GetRequest(url) async {
  Map<String, String> headers = {
    'Authorization': 'Bearer ${await getTokenFromLocalStorage()}'
  };
  var http;
  return http
      .get(Uri.parse(BaseConfig().baseUrl + url), headers: headers);
}

class BaseConfig {
  get baseUrl => null;
}

getTokenFromLocalStorage() {
}

Future PostRequest(url, body) async {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': 'Bearer ${await getTokenFromLocalStorage()}'
  };
  var http;
  return await http.post(Uri.parse(BaseConfig().baseUrl + url),
      headers: headers,
      body: jsonEncode(body));
}