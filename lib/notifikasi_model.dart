import 'package:http/http.dart';
import 'dart:convert';

class Notifikasi {
  final String? image;
  final String? title;
  final String? deskripsi;
  final String? status;
  final String? jam;
  final String? banner;
  final String? datetime;
  final String? kotanama;
  final String? layanan;
  final String? nomor;
  final String? copyController;
  final String? user_id;
  final String? id;

  Notifikasi(
      {this.image,
      this.title,
      this.deskripsi,
      this.status,
      this.jam,
      this.banner,
      this.datetime,
      this.kotanama,
      this.layanan,
      this.nomor,
      this.copyController,
      this.user_id,
      this.id});

  factory Notifikasi.fromJson(Map<String, dynamic> object)
  {
    return Notifikasi(
      id: object['id'].toString(),
      user_id: object['user_id'],
      title: object['title'],
      deskripsi: object['desc'],
      image: object['image'],
      status: object['status'],
      jam: object['time'],
    );
  }
}
