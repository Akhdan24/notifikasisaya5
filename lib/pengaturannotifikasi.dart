import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'notifikasi.dart';

class pengaturannotifikasi extends StatefulWidget {
  @override
  State<pengaturannotifikasi> createState() => _pengaturannotifikasiState();
}

class _pengaturannotifikasiState extends State<pengaturannotifikasi> {
  bool value = true;
  bool value1 = true;
  bool value2 = true;
  bool value3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back, size: 17, color: Colors.black54),
          ),
          SizedBox(width: 10),
          Text("Pengaturan Notifikasi",
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black54)),
        ]),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text('Notifikasi Belanja',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: '424242'.toColor())),
                        ),
                        Container(
                          child: Container(
                              child: Text(
                                  "Pemberitahuan tentang pembayaran, keranjang, dll",
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: '717171'.toColor()))),
                        ),
                      ]),
                  Container(
                    child: Switch.adaptive(
                      activeColor: Colors.white,
                      activeTrackColor: '66DE72'.toColor(),
                      value: value,
                      onChanged: (value) => setState(() => this.value = value),
                    ),
                  ),
                ]),
          ),
          SizedBox(height: 15),
          Divider(
            thickness: 1,
            height: 1,
            color: 'EEEEEE'.toColor(),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Notifikasi Promo',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '424242'.toColor())),
                        Text('Pemberitahuan promo, diskon, flash sale, dll.',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '717171'.toColor())),
                      ]),
                  Switch.adaptive(
                    activeColor: Colors.white,
                    activeTrackColor: '66DE72'.toColor(),
                    value: value1,
                    onChanged: (value1) => setState(() => this.value1 = value1),
                  ),
                ]),
          ),
          SizedBox(height: 15),
          Divider(
            thickness: 1,
            height: 1,
            color: 'EEEEEE'.toColor(),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Notifikasi Info',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '424242'.toColor())),
                        Text('Pemberitahuan tentang pengumuman, dll.',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '717171'.toColor())),
                      ]),
                  Switch.adaptive(
                      activeColor: Colors.white,
                      activeTrackColor: '66DE72'.toColor(),
                      value: value2,
                      onChanged: (value2) =>
                          setState(() => this.value2 = value2)),
                ]),
          ),
          SizedBox(height: 15),
          Divider(
            thickness: 1,
            height: 1,
            color: 'EEEEEE'.toColor(),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Notifikasi PPOB',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '424242'.toColor())),
                        Text('Pemberitahuan tentang produk digital, dll.',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '717171'.toColor())),
                      ]),
                  Switch.adaptive(
                      activeColor: Colors.white,
                      activeTrackColor: '66DE72'.toColor(),
                      value: value3,
                      onChanged: (value3) =>
                          setState(() => this.value3 = value3)),
                ]),
          ),
          SizedBox(height: 15),
          Divider(
            thickness: 1,
            height: 1,
            color: 'EEEEEE'.toColor(),
          ),
        ]),
      ),
    );
  }
}
