import 'package:flutter/material.dart';


class TopApps extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const TopApps({Key key, this.title, this.icon, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 10,top: 10),
                      height: 50,
                      width: 60,
                      child: Icon(icon,color: Colors.white),
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20,right: 10,top: 5),
                      child: Text(title,style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF'
                      ),),
                    )
                  ],
                );
  }
}