import 'dart:async';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class flashsale extends StatefulWidget {
  final String? title;
  final String? image;
  final String? deskripsi;
  final String? status;
  final String? jam;
  final bool? isRead;

  flashsale({this.isRead = false, this.title, this.image, this.deskripsi, this.status, this.jam});

  @override
  State<flashsale> createState() => _flashsaleState();
}

class _flashsaleState extends State<flashsale> {
  static const countdownDuration = Duration(days: 1);
  Duration duration = Duration();
  Timer? timer;

  bool isCountdown = true;

  @override
  void initState() {
    super.initState();

    startTimer();
    reset();
  }

  void reset() {
    if (isCountdown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = Duration());
    }
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }

      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( children: [
        InkWell(
          onTap: () {},
          child: Ink(
            padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
            color: (widget.isRead == true) ? Colors.white : 'F1FDFF'.toColor(),
            width: MediaQuery.of(context).size.width,
            height: 125,
            child: Column(
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        child: Text(
                            widget.deskripsi ?? "",
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
                          buildTime(),
                          // Text('00 : 20 : 45',
                          //     style: GoogleFonts.poppins().copyWith(
                          //         fontWeight: FontWeight.w300,
                          //         fontSize: 8,
                          //         color: Colors.white)),
                        ]),
                  ),
                ]),
              ],
            ),
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

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final hours = twoDigits(duration.inHours.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours, header: 'HOURS'),
        const SizedBox(width: 1),
        Text(":",
            style: GoogleFonts.poppins().copyWith(
                fontSize: 8, fontWeight: FontWeight.w300, color: Colors.white)),
        const SizedBox(width: 1),
        buildTimeCard(time: minutes, header: 'MINUTES'),
        const SizedBox(width: 1),
        Text(":",
            style: GoogleFonts.poppins().copyWith(
                fontSize: 8, fontWeight: FontWeight.w300, color: Colors.white)),
        const SizedBox(width: 1),
        buildTimeCard(time: seconds, header: 'SECONDS'),
      ],
    );

    return Text(
      '$minutes:$seconds',
      style: TextStyle(fontSize: 30),
    );
  }

  Widget buildTimeCard({required String time, required String header}) => Text(
        time,
        style: GoogleFonts.poppins().copyWith(
            fontSize: 8, fontWeight: FontWeight.w300, color: Colors.white),
      );
}
