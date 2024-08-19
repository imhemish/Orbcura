import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbcura_app/utils/colors.dart';
import 'package:orbcura_app/widgets/four_corner_screen.dart';
import 'package:orbcura_app/utils/upi_uri_parser.dart';

class PinBox extends StatelessWidget {
  final int? number;
  PinBox(this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: AppColors.border, width: 1.5),
            color: Colors.white),
        height: 30,
        width: 30,
        child: Center(
          child: Text(
            number == null ? " ": number.toString(),
            style: GoogleFonts.leagueSpartan(
                fontSize: 18, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ));
  }
}

class PinEntryPage extends StatefulWidget {
  final UPIDetails details;
  final int digits;
  PinEntryPage(this.details, {this.digits =4});

  @override
  State<PinEntryPage> createState() => _PinEntryPageState();
}

class _PinEntryPageState extends State<PinEntryPage> {
  int prefix = 0;
  List<int?> pin = [];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).height;
    return FourCornerScreen(
        CornerChild(
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  (prefix + 1).toString(),
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 26, fontWeight: FontWeight.w400),
                )), () {
          setState(() {
            pin.add(prefix + 1);
          });
        }),
        CornerChild(
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  (prefix + 2).toString(),
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 26, fontWeight: FontWeight.w400),
                )), () {
          setState(() {
            pin.add(prefix + 2);
          });
        }),
        CornerChild(
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  (prefix + 3).toString(),
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 26, fontWeight: FontWeight.w400),
                )), () {
          setState(() {
            pin.add(prefix + 3);
          });
        }),
        CornerChild(
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  (prefix + 4).toString(),
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 26, fontWeight: FontWeight.w400),
                )), () {
          setState(() {
            pin.add(prefix + 4);
          });
        }),
        Scaffold(
          body: Container(
            color: AppColors.white2,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 16,
                  ),
                  Image.asset(
                    "assets/bhim.png",
                    width: MediaQuery.sizeOf(context).width / 4.5,
                  ),
                  SizedBox(height: h / 20),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "UPI PIN",
                        style: GoogleFonts.leagueSpartan(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      )),
                      SizedBox(height: 10,),
                  ConstrainedBox(
                    constraints: BoxConstraints.loose(Size(220, double.infinity)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                        List<Widget>.generate(widget.digits, (index) {
                          int? tempNum;
                          try {
                            tempNum = pin[index]!;
                          } catch(e) {
                            tempNum = null;
                          }
                          return PinBox(tempNum);
                          }),
                      
                    ),
                  ),
                  SizedBox(
                    height: h / 8,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
            pin.add((prefix + 5) % 10);
          });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          border: Border.all(color: AppColors.border, width: 1.5),
                          color: Colors.white),
                      height: h / 4.5,
                      width: w / 4,
                      child: Center(
                          child: ConstrainedBox(
                        constraints:
                            BoxConstraints.loose(Size(w / 4, double.infinity)),
                        child: Text(
                          ((prefix + 5) % 10).toString(),
                          style: GoogleFonts.leagueSpartan(
                              fontSize: 26, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
