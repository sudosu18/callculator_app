import 'package:calculator_app/widget/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int firstNumber;
  int secondNumber;
  String history = '';
  String textToDisplay = '';
  String res;
  String operation;

  void btnClick(String btnVal){
   if (btnVal == "AC") {
     textToDisplay = "";
     firstNumber = 0;
     secondNumber = 0;
     res = "";
   }else if(btnVal == "C"){
     textToDisplay = "";
     firstNumber = 0;
     secondNumber = 0;
     res = "";
     history = "";
   }else if( btnVal == '+/-'){
     if(textToDisplay[0] != '-'){
       res = '-'+textToDisplay;
     }else{
       res = textToDisplay.substring(1);
     }
   }else if( btnVal == '<'){
     res = textToDisplay.substring(0, textToDisplay.length - 1);
   }
   else if (btnVal == '+' || btnVal == '-' || btnVal == 'x' || btnVal == '/'){
     firstNumber = int.parse(textToDisplay);
     res = '';
     operation = btnVal;
   }else if( btnVal == '='){
     secondNumber = int.parse(textToDisplay);
     if(operation == '+'){
       res = (firstNumber + secondNumber).toString();
       history = firstNumber.toString() + operation.toString() + secondNumber.toString();
     }
     if(operation == '-'){
       res = (firstNumber - secondNumber).toString();
       history = firstNumber.toString() + operation.toString() + secondNumber.toString();
     }
     if(operation == 'x'){
       res = (firstNumber * secondNumber).toString();
       history = firstNumber.toString() + operation.toString() + secondNumber.toString();
     }
     if(operation == '/'){
       res = (firstNumber / secondNumber).toString();
       history = firstNumber.toString() + operation.toString() + secondNumber.toString();
     }
   }else{
     res = int.parse(textToDisplay + btnVal).toString();
   }

   setState(() {
     textToDisplay = res;
   });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
        ),
        backgroundColor: Color.fromRGBO(28, 29, 34, 1),
        body: Center(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(color: Colors.white30, fontSize: 48)),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 40)),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  CalculatorButton(
                    number: "AC",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 18,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "C",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "<",
                    fillColor: 0xFF947FFD,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "/",
                    fillColor: 0xFF947FFD,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    number: "9",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "8",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "7",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "x",
                    fillColor: 0xFF947FFD,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    number: "6",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "5",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "4",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "-",
                    fillColor: 0xFF947FFD,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    number: "3",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "2",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "1",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "+",
                    fillColor: 0xFF947FFD,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    number: "+/-",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 18,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "0",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "00",
                    fillColor: 0xFF222327,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                  CalculatorButton(
                    number: "=",
                    fillColor: 0xFF947FFD,
                    textColor: 0xFFDEDFE2,
                    textSixe: 24,
                    callBack: btnClick,
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
