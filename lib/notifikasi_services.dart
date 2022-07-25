import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:notifikasisaya/notifikasi_model.dart';

class Services
{
  static Future<List<Notifikasi>> getNotification() async {
    String apiURL = 'https://dashboard.timun.co.id/api/notification';
    Uri myUri = Uri.parse(apiURL);
    var apiResult = await http.get(myUri);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listNotifikasi = (jsonObject as Map<String, dynamic>)['data'];

    List<Notifikasi> Notification = [];
    for (int i = 0; i < listNotifikasi.length; i++) {
      Notification.add(Notifikasi.fromJson(listNotifikasi[i]));
    }
    return Notification;
  }
}
