import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class notifikasisampai extends StatelessWidget {
  final String? title;
  final String? image;
  final String? deskripsi;
  final String? status;
  final String? jam;
  final String? datetime;
  final String? kotanama;
  final bool? isRead;

  notifikasisampai(
      {this.isRead = false,
      this.title,
      this.image,
      this.deskripsi,
      this.status,
      this.jam,
      this.datetime,
      this.kotanama});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(children: [
        InkWell(
          onTap: () {},
          child: Column(children: [
            Ink(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              color: isRead == true ? Colors.white : 'FFF1F1'.toColor(),
              width: MediaQuery.of(context).size.width,
              height: 75,
              child: Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                            child: Text(deskripsi ?? "",
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
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              width: 320,
              height: 50,
              color: 'F8F8F8'.toColor(),
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Row(children: [
                    Text(
                      datetime ?? "",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(width: 55),
                    Text(
                      kotanama ?? "",
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
        ),
        Divider(
          thickness: 1,
          height: 1,
          color: 'EEEEEE'.toColor(),
        ),
        // SizedBox(height: 15),
      ]),
    );
  }
}
