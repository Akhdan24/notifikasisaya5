import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'notifikasipayment.dart';
import 'notifikasipengiriman.dart';
import 'notifikasipromo.dart';
import 'notifikasipromokode.dart';

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
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
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
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child:
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Terbaru",
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Text("Tanda Terakhir Dibaca (12)",
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: "AAD7DE".toColor())),
                        ],
                      ),
                    ),
                ),
              // Container(
              //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              //   child: SingleChildScrollView(
              //     clipBehavior: Clip.hardEdge,
              //     physics: BouncingScrollPhysics(),
              //     scrollDirection: Axis.vertical,
              //     child: Column(
              //       children: [
              //         SizedBox(width: 10),
              //         paymentberhasil(),
              //         SizedBox(width: 10),
              //         notifikasipengiriman(),
              //         SizedBox(width: 10),
              //         notifikasipromo(),
              //         SizedBox(width: 10),
              //         notifikasipromokode(),
              //         SizedBox(width: 10),
              //       ],
              //     ),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                // height: MediaQuery.of(context).size.height,
                child:
                    ListView(scrollDirection: Axis.vertical, children: [
                  SizedBox(width: 10),
                  paymentberhasil(),
                  SizedBox(width: 10),
                  notifikasipengiriman(),
                  SizedBox(width: 10),
                  notifikasipromo(),
                  SizedBox(width: 10),
                  notifikasipromokode(),
                  SizedBox(width: 10),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
