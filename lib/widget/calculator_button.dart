import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String number;
  final int fillColor;
  final int textColor;
  final double textSixe;
  final Function callBack;

  const CalculatorButton({
    this.number,
    this.fillColor,
    this.textColor,
    this.textSixe,
    this.callBack
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Text(
            number,
            style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: textSixe)),
          ),
          color: Color(fillColor),
          textColor: Color(textColor),
          onPressed: () {
            callBack(number);
          },
        ),
      ),
    );
  }
}

//fromRGBO(45, 46, 50, 1)