import 'package:http/http.dart' as http;
import 'dart:convert';

final CHAVE_YOUTUBE_API = '';
final CHAVE_CANAL = 'UCVHFbqXqoYvEWM1Ddxl0QDg';
final URL_BASE = 'www.googleapis.com';

class ApiYoutube{

  pesquisar(String termoBusca) async{

    final uri = Uri.https(URL_BASE, "/youtube/v3/search", {
      "part": "snippet",
      "type": "video",
      "maxResults": "20",
      "order": "date",
      "channelId": CHAVE_CANAL,
      "q": termoBusca,
      "key": CHAVE_YOUTUBE_API
    });

    final resposta = await http.get(uri);
    Map<String, dynamic> respostaJson = json.decode(resposta.body);

    print(respostaJson["items"][0]["snippet"]["title"]);

  }
}