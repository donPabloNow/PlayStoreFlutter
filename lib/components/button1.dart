import 'package:flutter/material.dart';


class ButtonB1 extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;

  const ButtonB1({Key key, this.text, this.buttonColor, this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: <BoxShadow>[
             new BoxShadow(  
            color: Colors.black12,
           blurRadius: 10.0,
         offset: new Offset(0.0, 3.0),
           ),
          ],
              ),
              child: Center(
                child: Text(text,style: TextStyle(
                  color: textColor,
                  fontFamily: 'sf',
                  fontSize: 20
                ),),
              ),
            );
  }
}