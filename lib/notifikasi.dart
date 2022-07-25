import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notifikasisaya/notifikasi_model.dart';
import 'package:notifikasisaya/notifikasi_services.dart';
import 'package:notifikasisaya/pengaturannotifikasi.dart';
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
  @override
  State<notifikasi> createState() => _notifikasiState();
}

class _notifikasiState extends State<notifikasi> {
  List<Notifikasi> output = [];
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;

  @override
  Widget build(BuildContext context) {
    Services.getNotification().then((data) {
      setState(() {
        output = data;
      });
    });
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.arrow_back_outlined,
                    color: Colors.black54, size: 17),
              ),
              SizedBox(width: 10),
              Text("Notifikasi Saya",
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54)),
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.to(pengaturannotifikasi());
            },
            child: Icon(Icons.settings, size: 17, color: Colors.black54),
          ),
        ]),
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
                              onTap: () {
                                pageController.animateToPage(0,
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.bounceInOut);
                              },
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
                              onTap: () {
                                pageController.animateToPage(1,
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.bounceInOut);
                              },
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
                              onTap: () {
                                pageController.animateToPage(2,
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.bounceInOut);
                              },
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
                              onTap: () {
                                pageController.animateToPage(3,
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.bounceInOut);
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/invoice.png',
                                        width: 12,
                                        height: 12,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text("PPOB",
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
              height: 487,
              child: PageView(
                  pageSnapping: true,
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      pageChanged = index;
                    });
                    print(pageChanged);
                  },
                  children: [
                    Container(
                      height: 487,
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          clipBehavior: Clip.hardEdge,
                          physics: BouncingScrollPhysics(),
                          children: output
                              .map((item) => (item.status == "Belanja")
                                  ? paymentberhasil(
                                      title: item.title,
                                      image: item.image,
                                      deskripsi: item.deskripsi,
                                      status: item.status,
                                      jam: item.jam,
                                    )
                                  : SizedBox())
                              .toList()),
                    ),
                    Container(
                      height: 487,
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          clipBehavior: Clip.hardEdge,
                          physics: BouncingScrollPhysics(),
                          children: output
                              .map((item) => (item.status == "Info")
                                  ? notifikasiinfoupdate(
                                      title: item.title,
                                      image: item.image,
                                      deskripsi: item.deskripsi,
                                      status: item.status,
                                      jam: item.jam,
                                    )
                                  : SizedBox())
                              .toList()),
                    ),
                    Container(
                      height: 487,
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          clipBehavior: Clip.hardEdge,
                          physics: BouncingScrollPhysics(),
                          children: output
                              .map((item) => (item.status == "Promo")
                                  ? flashsale(
                                      title: item.title,
                                      image: item.image,
                                      deskripsi: item.deskripsi,
                                      status: item.status,
                                      jam: item.jam,
                                    )
                                  : SizedBox())
                              .toList()),
                    ),
                    Container(
                      height: 487,
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          clipBehavior: Clip.hardEdge,
                          physics: BouncingScrollPhysics(),
                          children: output
                              .map((item) => (item.status == "PPOB")
                                  ? notifikasippobpaymentberhasil(
                                      title: item.title,
                                      image: item.image,
                                      deskripsi: item.deskripsi,
                                      status: item.status,
                                      jam: item.jam,
                                      layanan: item.layanan,
                                      nomor: item.nomor,
                                    )
                                  : SizedBox())
                              .toList()),
                    ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   height: 487,
                    //   child: ListView(
                    //       scrollDirection: Axis.vertical,
                    //       clipBehavior: Clip.hardEdge,
                    //       physics: BouncingScrollPhysics(),
                    //       children: output
                    //           .map((item) => (item.status == "Info")
                    //               ? notifikasiinfoupdate(
                    //                   title: item.title,
                    //                   image: item.image,
                    //                   deskripsi: item.deskripsi,
                    //                   status: item.status,
                    //                   jam: item.jam,
                    //                 )
                    //               : SizedBox())
                    //           .toList()),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   height: 487,
                    //   child: ListView(
                    //       scrollDirection: Axis.vertical,
                    //       clipBehavior: Clip.hardEdge,
                    //       physics: BouncingScrollPhysics(),
                    //       children: output
                    //           .map((item) => (item.status == "Belanja")
                    //               ? notifikasipengiriman(
                    //                   title: item.title,
                    //                   image: item.image,
                    //                   deskripsi: item.deskripsi,
                    //                   status: item.status,
                    //                   jam: item.jam,
                    //                 )
                    //               : SizedBox())
                    //           .toList()),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   height: 487,
                    //   child: ListView(
                    //       scrollDirection: Axis.vertical,
                    //       clipBehavior: Clip.hardEdge,
                    //       physics: BouncingScrollPhysics(),
                    //       children: output
                    //           .map((item) => (item.status == "PPOB")
                    //               ? notifikasippobpayment(
                    //                   title: item.title,
                    //                   image: item.image,
                    //                   deskripsi: item.deskripsi,
                    //                   status: item.status,
                    //                   jam: item.jam,
                    //                 )
                    //               : SizedBox())
                    //           .toList()),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   height: 487,
                    //   child: ListView(
                    //       scrollDirection: Axis.vertical,
                    //       clipBehavior: Clip.hardEdge,
                    //       physics: BouncingScrollPhysics(),
                    //       children: output
                    //           .map((item) => (item.status == "Promo")
                    //               ? notifikasipromokode(
                    //                   title: item.title,
                    //                   image: item.image,
                    //                   deskripsi: item.deskripsi,
                    //                   status: item.status,
                    //                   jam: item.jam,
                    //                   copyController: item.copyController,
                    //                 )
                    //               : SizedBox())
                    //           .toList()),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   height: 487,
                    //   child: ListView(
                    //       scrollDirection: Axis.vertical,
                    //       clipBehavior: Clip.hardEdge,
                    //       physics: BouncingScrollPhysics(),
                    //       children: output
                    //           .map((item) => (item.status == "Belanja")
                    //               ? notifikasisampai(
                    //                   title: item.title,
                    //                   image: item.image,
                    //                   deskripsi: item.deskripsi,
                    //                   status: item.status,
                    //                   jam: item.jam,
                    //                   datetime: item.datetime,
                    //                   kotanama: item.kotanama,
                    //                 )
                    //               : SizedBox())
                    //           .toList()),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   height: 487,
                    //   child: ListView(
                    //       scrollDirection: Axis.vertical,
                    //       clipBehavior: Clip.hardEdge,
                    //       physics: BouncingScrollPhysics(),
                    //       children: output
                    //           .map((item) => (item.status == "Promo")
                    //               ? notifikasipromo(
                    //                   title: item.title,
                    //                   image: item.image,
                    //                   deskripsi: item.deskripsi,
                    //                   status: item.status,
                    //                   jam: item.jam,
                    //                   banner: item.banner,
                    //                 )
                    //               : SizedBox())
                    //           .toList()),
                    // ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
