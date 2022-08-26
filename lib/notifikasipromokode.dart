import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:flutter/services.dart';

class notifikasipromokode extends StatefulWidget {
  final String? title;
  final String? image;
  final String? deskripsi;
  final String? status;
  final String? jam;
  final String? copyController;
  final bool? isRead;

  notifikasipromokode(
      {this.isRead = false,
      this.title,
      this.image,
      this.deskripsi,
      this.status,
      this.jam,
      this.copyController});

  @override
  State<notifikasipromokode> createState() => _notifikasipromokodeState();
}

class _notifikasipromokodeState extends State<notifikasipromokode> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(children: [
          InkWell(
            onTap: () {},
            child: Ink(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              width: MediaQuery.of(context).size.width,
              height: 140,
              color: widget.isRead == true ? Colors.white : 'FFF1F1'.toColor(),
              child: Container(
                width: 360,
                height: 130,
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
                            child: Text(widget.deskripsi ?? "",
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
                    Row(
                      children: [
                        Container(
                          width: 249,
                          height: 30,
                          padding: EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Text("Kode Promo: ",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300,
                                    color: '989797'.toColor())),
                            SizedBox(width: 5),
                            Text(widget.copyController ?? "",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '797979'.toColor())),
                            // contentPadding: EdgeInsets.only(top: 0, left: 10),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.only(
                            //         topLeft: Radius.circular(5),
                            //         bottomLeft: Radius.circular(5))),

                            // hintText: 'PERSALINANDIBAYARINBOLO',
                          ]),
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: '989797'.toColor(), width: 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                          ),
                          // child: TextFormField(
                          //   readOnly: true,
                          //   decoration: InputDecoration(
                          //     contentPadding: EdgeInsets.only(bottom: 16, left: 10),
                          //     border: InputBorder.none,
                          //   ),
                          //   controller: copyController,
                          // ),
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
                            color: "F47A7E".toColor(),
                            onPressed: () {
                              Clipboard.setData(
                                  ClipboardData(text: widget.copyController));
                              Fluttertoast.showToast(
                                  msg: "Kode Voucher Berhasil Disalin",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: "AAD7DE".toColor(),
                                  textColor: Colors.white,
                                  fontSize: 16);
                            },
                            child: Row(
                              children: [
                                // buildCopy(),
                                Icon(Icons.content_copy_outlined,
                                    color: Colors.white, size: 11),
                                SizedBox(width: 4),
                                Text('Salin',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                // buildPaste(),
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
          ),
          Divider(
            thickness: 1,
            height: 1,
            color: 'EEEEEE'.toColor(),
          ),
        ]),
      ),
    );
  }
// Widget buildCopy() => Builder(
//       builder: (context) =>
//           Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
//         GestureDetector(
//           child: Row(children: [
//             Icon(Icons.content_copy_outlined, color: Colors.white, size: 11),
//             SizedBox(width: 4),
//             Text('Salin',
//                 style: GoogleFonts.poppins().copyWith(
//                     fontSize: 10,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white)),
//           ]),
//           onTap: () {
//             Fluttertoast.showToast(
//                 msg: "Kode Voucher Berhasil Disalin",
//                 toastLength: Toast.LENGTH_SHORT,
//                 gravity: ToastGravity.BOTTOM,
//                 timeInSecForIosWeb: 1,
//                 backgroundColor: "AAD7DE".toColor(),
//                 textColor: Colors.white,
//                 fontSize: 16);
//           },
//         ),
//       ]),
//     );
}
