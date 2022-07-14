import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'flashsale.dart';
import 'notifikasiPPOBpayment.dart';
import 'notifikasiPPOBpaymentberhasil.dart';
import 'notifikasiinfopengumuman.dart';
import 'notifikasiinfoupdate.dart';
import 'notifikasipayment.dart';
import 'notifikasipengiriman.dart';
import 'notifikasipromo.dart';
import 'notifikasipromokode.dart';
import 'notifikasisampai.dart';

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
              child: Icon(Icons.arrow_back_outlined,
                  color: Colors.black, size: 17),
            ),
            SizedBox(width: 10),
            Text("Notifikasi Saya",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: Column(children: [
                Container(
                  // alignment: Alignment.bottomLeft,
                  child: SingleChildScrollView(
                    clipBehavior: Clip.hardEdge,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 35,
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Container(
                            width: 85,
                            height: 30,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.shade300,
                                ),
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(-1, 1),
                                  color: Colors.grey.shade300,
                                ),
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(1, 0),
                                  color: Colors.grey.shade300,
                                ),
                              ],
                              color: Colors.white,
                              // border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/ic.png',
                                        width: 12,
                                        height: 12,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text("Semua",
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            color: "6B6B6B".toColor())),
                                  ]),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            width: 85,
                            height: 30,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.shade300,
                                ),
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(-1, 1),
                                  color: Colors.grey.shade300,
                                ),
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(1, 0),
                                  color: Colors.grey.shade300,
                                ),
                              ],
                              color: Colors.white,
                              // border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/carts.png',
                                        width: 12,
                                        height: 12,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text("Belanja",
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            color: "6B6B6B".toColor())),
                                  ]),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            width: 66,
                            height: 30,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.shade300,
                                ),
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(-1, 1),
                                  color: Colors.grey.shade300,
                                ),
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(1, 0),
                                  color: Colors.grey.shade300,
                                ),
                              ],
                              color: Colors.white,
                              // border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/info.png',
                                        width: 12,
                                        height: 12,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text("Info",
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            color: "6B6B6B".toColor())),
                                  ]),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            width: 85,
                            height: 30,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.shade300,
                                ),
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(-1, 1),
                                  color: Colors.grey.shade300,
                                ),
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: const Offset(1, 0),
                                  color: Colors.grey.shade300,
                                ),
                              ],
                              color: Colors.white,
                              // border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/tag.png',
                                        width: 12,
                                        height: 12,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text("Promo",
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            color: "6B6B6B".toColor())),
                                  ]),
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Terbaru",
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Text("Terakhir Dibaca (12)",
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: "AAD7DE".toColor())),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 487,
              child: ListView(
                  scrollDirection: Axis.vertical,
                  clipBehavior: Clip.hardEdge,
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 10),
                    paymentberhasil(),
                    SizedBox(width: 10),
                    notifikasipengiriman(),
                    SizedBox(width: 10),
                    notifikasipromo(),
                    SizedBox(width: 10),
                    notifikasipromokode(),
                    SizedBox(width: 10),
                    flashsale(),
                    SizedBox(width: 10),
                    notifikasisampai(),
                    SizedBox(width: 10),
                    notifikasiinfoupdate(),
                    SizedBox(width: 10),
                    notifikasiinfopengumuman(),
                    SizedBox(width: 10),
                    notifikasippobpayment(),
                    SizedBox(width: 10),
                    notifikasippobpaymentberhasil(),
                    SizedBox(width: 10),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
