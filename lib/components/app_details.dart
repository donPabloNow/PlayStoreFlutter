import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'button1.dart';



class Appdetails extends StatefulWidget {
  @override
  _AppdetailsState createState() => _AppdetailsState();
}

class _AppdetailsState extends State<Appdetails> {
  Row makerow(String text,precent) {
    return Row(
                children: <Widget>[
                  Text(text),
                  LinearPercentIndicator(
                width: 140.0,
                lineHeight: 12.0,
                percent: precent,
                backgroundColor: Colors.grey,
                progressColor: Color(0xff00E394),
              ),
                ],
              );
  }
  Stack makestack() {
    return Stack(
      children: <Widget>[
        Container(
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Colors.purple.shade600
              ]
            )
          ),
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        Container(
          height: 205,
          margin: EdgeInsets.only(left: 20,right: 20,top: 130),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
             new BoxShadow(  
            color: Colors.black12,
           blurRadius: 10.0,
         offset: new Offset(0.0, 3.0),
           ),
          ],
          ),
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                child: Icon(FontAwesomeIcons.skype,color: Colors.white,),
              ),
              title: Text('Skype',style: TextStyle(fontFamily: 'sf')),
              subtitle: Text('Microsoft',style: TextStyle(
                fontFamily: 'sf'
              ),),
              trailing: Container(
                height: 40,
                width: 40,
                child: Icon(Icons.more_vert,color: Colors.black),
              ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 80,
                    color: Colors.white,
                    child: Column(
                        children: <Widget>[
                          Text('4.5',style: TextStyle(fontSize: 30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Icon(FontAwesomeIcons.solidStar,color: Color(0xff00E394),),
                             Icon(FontAwesomeIcons.solidStar,color: Color(0xff00E394),),
                             Icon(FontAwesomeIcons.solidStar,color: Color(0xff00E394),),
                             Icon(FontAwesomeIcons.solidStar,color: Color(0xff00E394),),
                             Icon(FontAwesomeIcons.starHalfAlt,color: Color(0xff00E394),)
                           ], 
                          )
                        ],
                      ),
                  ),
                  VerticalDivider(
                    color: Colors.green,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,top: 0),
                    
                    
                    color: Colors.white,
                    child: Column(
                        children: <Widget>[
                        makerow('5',0.9),
                        makerow('4',0.7),
                        makerow('3',0.5),
                        makerow('2', 0.3)
                        ],
                      ),
                  ),
                ],
              )
            ],
          ),
        ),  
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          makestack(),
          Padding(
            padding: EdgeInsets.only(top: 320,left: 10,right: 10),
            child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Screenshots',style: TextStyle(
                    fontFamily: 'sf',
                    fontSize: 22,
                    
                  ),),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: (){},
                  )
                ],
              ),
              Container(
                height: 150,
                
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            Divider(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Description',style: TextStyle(
                    fontFamily: 'sf',
                    fontSize: 22,
                    
                  ),),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: (){},
                  )
                ],
              ),
             Text('Use Skype to send SMS messages to mobiles worldwide and with SMS Connect you can now also read and reply to your phones SMS messages right from your computer. SMS connect will be released gradually.',style: TextStyle(
               fontSize: 16,
               fontFamily: 'sf'
             ),) 
            ],
          ),
          )
        ],
      ),
    bottomNavigationBar: Padding(
      padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonB1(
              text: 'Preview',
              buttonColor: Colors.white,
              textColor: Theme.of(context).primaryColor,
            ),
            ButtonB1(
              text: 'Install',
              buttonColor: Theme.of(context).primaryColor,
              textColor: Colors.white,
            )
          ],
        ),
        )
      ),
    ),  
    );
  }
}