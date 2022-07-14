import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class notifikasisampai extends StatelessWidget {
  const notifikasisampai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 75,
          child: Container(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/bayi.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Pesanan Anda Telah Sampai",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 270,
                    child: Text(
                        "Pembayaran pesanan 220608B8WEBVV2 terkonfirmasi. Mohon menunggu produk dikirimkan.",
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: "717171".toColor())),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.shopping_bag_outlined,
                          color: "6B6B6B".toColor(), size: 12),
                      SizedBox(width: 5),
                      Text("Belanja",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              color: "6B6B6B".toColor())),
                      SizedBox(width: 15),
                      Icon(Icons.schedule_outlined,
                          color: "6B6B6B".toColor(), size: 12),
                      SizedBox(width: 5),
                      Text("12 Jam",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              color: "6B6B6B".toColor())),
                    ],
                  ),
                ],
              ),
                  SizedBox(height: 20),
            ]),
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          height: 50,
          child: Column(
            children: [
              Row(children: [
                Text(
                  "Tanggal: ",
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: '6F6F6F'.toColor()),
                ),
                SizedBox(width: 95),
                Text(
                  "Penerima: ",
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: '6F6F6F'.toColor()),
                ),
              ]),
              Row( children: [
                Text(
                  "2015-03-04, 15:44",
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(width: 55),
                Text(
                  "RISKA VIVI, PALEMBANG",
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
