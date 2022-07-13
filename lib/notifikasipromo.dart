import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class notifikasipromo extends StatelessWidget {
  const notifikasipromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            width: 360,
            height: 205,
            child: Container(
              child: Column(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/2475.png',
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
                          child: Text("Kupon Gratis Ongkir",
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
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: "717171".toColor())),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.sell_outlined,
                                color: "6B6B6B".toColor(), size: 12),
                            SizedBox(width: 5),
                            Text("Promo",
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
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: new BorderRadius.circular(5),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/Frame.png'),
                      width: 320,
                      height: 95,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ), // SizedBox(height: 10),
    );
  }
}