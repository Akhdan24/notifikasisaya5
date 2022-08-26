import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:url_launcher/url_launcher.dart';

class notifikasiinfoupdate extends StatefulWidget {
  final String? title;
  final String? image;
  final String? deskripsi;
  final String? status;
  final String? jam;
  final bool? isRead;

  notifikasiinfoupdate(
      {this.isRead = false,
      this.title,
      this.image,
      this.deskripsi,
      this.status,
      this.jam});

  @override
  State<notifikasiinfoupdate> createState() => _notifikasiinfoupdateState();
}

class _notifikasiinfoupdateState extends State<notifikasiinfoupdate> {
  var isChanged = false;
  final Uri linkandroid = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.timun.timun_app");
  final Uri linkios = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.timun.timun_app");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          color: widget.isRead == true ? Colors.white : 'FFF1F1'.toColor(),
          width: MediaQuery.of(context).size.width,
          height: 135,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 85,
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    alignment: Alignment.topCenter,
                    child: Image.network(
                      widget.image ?? '',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(widget.title ?? "",
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 270,
                          child: Text(widget.deskripsi ?? "",
                              maxLines: 2,
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: "717171".toColor())),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.info_outlined,
                                color: "6B6B6B".toColor(), size: 12),
                            SizedBox(width: 5),
                            Text(widget.status ?? "",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300,
                                    color: "6B6B6B".toColor())),
                            SizedBox(width: 15),
                            Icon(Icons.schedule_outlined,
                                color: "6B6B6B".toColor(), size: 12),
                            SizedBox(width: 5),
                            Text(widget.jam ?? "",
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
                  color: "F47A7E".toColor(),
                  textColor: Colors.white,
                  onPressed: () async {
                    if (Platform.isAndroid) {
                      if (!await launchUrl(linkandroid))
                        throw 'Could not launch $linkandroid';
                    } else if (Platform.isIOS) {
                      if (!await launchUrl(linkios))
                        throw 'Could not launch $linkios';
                    }
                  },
                  child: Text('Update Aplikasi Sekarang',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          height: 1,
          color: 'EEEEEE'.toColor(),
        ),
      ]),
    );
  }
}
