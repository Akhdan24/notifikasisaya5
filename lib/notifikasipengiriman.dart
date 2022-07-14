import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class notifikasipengiriman extends StatelessWidget {
  const notifikasipengiriman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 145,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 360,
                height: 95,
                child: Row(children: [
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
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      child: Text("Pesanan anda dalam perjalanan",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 270,
                      child: Text(
                          "Et omnia in potestate nostra esse natura liber, libera, libere valeant; sed illis non est",
                          maxLines: 2,
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
                  ]),
                ]),
              ),
              // SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: "AAD7DE".toColor(),
                  // background
                  textColor: Colors.white,
                  // foreground
                  onPressed: () {},
                  child: Text('Lacak Pesanan Saya',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
