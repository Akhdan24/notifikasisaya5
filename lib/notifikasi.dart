import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class notifikasi extends StatefulWidget {
  const notifikasi({Key? key}) : super(key: key);

  @override
  State<notifikasi> createState() => _notifikasiState();
}

class _notifikasiState extends State<notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.arrow_back_outlined, color: Colors.black),
            ),
            SizedBox(width: 10),
            Text("Notifikasi Saya",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 500,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 1, color: Colors.green),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                              children: [
                                Image(image: AssetImage("assest/508.png")),
                                Text("Semua",
                                    style: (GoogleFonts.poppins().copyWith(
                                        fontSize: 12, color: "6B6B6B".toColor()))),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 1, color: Colors.green),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                              children: [
                                Image(image: AssetImage("assest/carts.png")),
                                Text("Semua",
                                    style: (GoogleFonts.poppins().copyWith(
                                        fontSize: 12, color: "6B6B6B".toColor()))),
                              ]),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
