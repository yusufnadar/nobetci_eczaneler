import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nobetci_eczane/nobetci_eczane_model.dart';

class GetData {
  Future<NobetciEczaneModel> eczaneleriGetir(int sehirID) async {
    String url;
    if (sehirID < 10) {
      url = "https://api.kodlama.net/eczane/il/0$sehirID";
    } else {
      url = "https://api.kodlama.net/eczane/il/$sehirID";
    }
    var response = await http.post(
      url,
    );
    if (response.statusCode == 200) {
      print("işlem başarılı");
      final jsonData = json.decode(utf8.decode(response.bodyBytes));
      return NobetciEczaneModel.fromJson(jsonData);
    } else {
      print("işlem başarısız");
    }
  }
}
