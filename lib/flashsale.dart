import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class flashsale extends StatelessWidget {
  const flashsale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: 130,
        child: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
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
            SizedBox(height: 15),
            Row(children: [
              Text("Berakhir dalam: ",
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.w300,
                      color: "A5A5A5".toColor())),
              SizedBox(width: 10),
              Container(
                alignment: Alignment.center,
                width: 70,
                height: 16,
                decoration: BoxDecoration(
                  color: 'F44336'.toColor(),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 6),
                      Icon(Icons.bolt_outlined, color: Colors.white, size: 9),
                      SizedBox(width: 5),
                      Text('00 : 20 : 45',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 8,
                              color: Colors.white)),
                    ]),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
