import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class paymentberhasil extends StatelessWidget {
  const paymentberhasil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          color: Colors.white,
          width: 360,
          height: 100,
          child: Container(
            child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
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
                    child: Text("Pembayaran Berhasil",
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
            ]),
          ),
        ),
      );
  }
}
