import 'package:flutter/material.dart';
import 'package:notifikasisaya/notifikasi.dart';

import 'flashsale.dart';
import 'notifikasipayment.dart';
import 'notifikasipengiriman.dart';
import 'notifikasipromo.dart';
import 'notifikasipromokode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: notifikasi(),
    );
  }
}
