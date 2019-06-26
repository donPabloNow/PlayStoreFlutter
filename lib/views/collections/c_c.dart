import 'package:flutter/material.dart';

class CC extends StatelessWidget {
  final String title;

  const CC({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 200,
          margin: EdgeInsets.only(
            top: 20,
            right: 10,left: 10
          ),
          decoration: BoxDecoration(
            color: Colors.pink.shade500,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
             new BoxShadow(  
            color: Colors.black12,
           blurRadius: 10.0,
         offset: new Offset(0.0, 10.0),
           ),
          ],
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(),
            Column(
              children: <Widget>[
                
            Padding(
              padding: EdgeInsets.only(left: 20,top: 80),
              child: Row(
              children: <Widget>[
                Text(title,style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'sf'
                ),)
              ],
            ),
            )
              ],
            )
          ],
        ),  
        );
  }
}