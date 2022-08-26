import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class paymentberhasil extends StatelessWidget {
  final String? title;
  final String? image;
  final String? deskripsi;
  final String? status;
  final String? jam;
  final bool? isRead;

  paymentberhasil(
      {this.isRead = false, this.title, this.image, this.deskripsi, this.status, this.jam});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( children: [
        InkWell(
          onTap: () {},
          child: Ink(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            color: (isRead == true) ? Colors.white : 'FFF1F1'.toColor(),
            width: MediaQuery.of(context).size.width,
            height: 94,
            child: Container(
              child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    image ?? '',
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
                      child: Text(title ?? "",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 270,
                      child: Text(
                          deskripsi ?? "",
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
                        Text(status ?? "",
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                color: "6B6B6B".toColor())),
                        SizedBox(width: 15),
                        Icon(Icons.schedule_outlined,
                            color: "6B6B6B".toColor(), size: 12),
                        SizedBox(width: 5),
                        Text(jam ?? "",
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
        ),
        Divider(
          thickness: 1,
          height: 1,
          indent: 0,
          color: 'EEEEEE'.toColor(),
        ),
      ]),
      );
  }
}
