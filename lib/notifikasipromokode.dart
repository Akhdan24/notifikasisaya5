import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class notifikasipromokode extends StatelessWidget {
  const notifikasipromokode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Column(
              children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              color: Colors.white,
              child: Container(
                width: 360,
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
                    Row(
                      children: [
                        Container(
                          width: 249,
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 5, left: 10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5))),
                              hintText: 'PERSALINANDIBAYARINBOLO',
                            ),
                          ),
                        ),
                        Container(
                          width: 71,
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            )),
                            color: "AAD7DE".toColor(),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.content_copy_outlined,
                                    color: Colors.white, size: 11),
                                SizedBox(width: 4),
                                Text('Salin',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
    );
  }
}
