import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playstore/components/app_container.dart';
import 'package:playstore/components/intro_page_view.dart';

import 'package:playstore/views/dashboard/app_column.dart';


class DashBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
        
        children: <Widget>[
          Container(
            height: 180,
            child: Container(
              margin: EdgeInsets.only(right: 10,top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: IntroPageView(),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Top Apps',style: TextStyle(fontFamily: 'SF',fontSize: 22,fontWeight: FontWeight.bold),),
              FlatButton(
                child: Text('ShowAll',style: TextStyle(color: Theme.of(context).primaryColor),),
                onPressed: (){},
              )
            ],
          ),
          Container(
            height: 90,
            child: Row(
              children: <Widget>[
               TopApps(icon: FontAwesomeIcons.youtube,title: 'Youtube',color: Colors.red),
               TopApps(icon: FontAwesomeIcons.blackberry,title: 'BBM',color: Colors.black),
               TopApps(icon: FontAwesomeIcons.alipay,title: 'Alipay',color: Colors.blue,),
               TopApps(icon: FontAwesomeIcons.amazon,title: 'Amazon',color: Colors.blueGrey,)
              ],
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Popular this week',style: TextStyle(fontFamily: 'SF',fontSize: 22,fontWeight: FontWeight.bold),),
              FlatButton(
                child: Text('ShowAll',style: TextStyle(color: Theme.of(context).primaryColor),),
                onPressed: (){},
              )
            ],
          ),
          Expanded(
            flex: 2,
            child: ListView(
              children: <Widget>[
                AppContainer(
            title: 'Youtube',
            subtitle: 'Google',
            icon: FontAwesomeIcons.youtube,
            color: Colors.red,
          ),
          AppContainer(
            title: 'Whatsapp',
            subtitle: 'Facebook',
            icon: FontAwesomeIcons.whatsapp,
            color: Colors.teal,
          ),
          AppContainer(
            title: 'Messenger',
            color: Colors.blue,
            icon: FontAwesomeIcons.facebookMessenger,
            subtitle: 'Facebook',
          )
              ],
            ),
          )
        ],
      );
  }
}