import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playstore/style/style.dart';

import 'dash_body.dart';


class DashView extends StatefulWidget {
  @override
  _DashViewState createState() => _DashViewState();
}

class _DashViewState extends State<DashView> with TickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller =TabController(
      length: 10,
      vsync: this,
      initialIndex: 0
    );
  }
  Container buttonx() {
    return Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(right: 10,bottom: 0,top: 10),
            child: Icon(Icons.notifications,color: Theme.of(context).primaryColor),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
              new BoxShadow(  
             color: Colors.black12,
            blurRadius: 10.0,
           offset: new Offset(0.0, 1.0),
            ),
          ],
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Material(
          elevation: 2.0,
          child: Container(
          height: 120,
          child: Padding(
            padding: EdgeInsets.only(left: 20,right: 10,top: 20),
            child: Column(
              children: <Widget>[
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Store',style: PlayStyle.appBarTitle),
                buttonx()
              ],
            ),
            TabBar(
          controller: controller,
          labelColor: Theme.of(context).primaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              text: 'ALL',
            ),
            Tab(
              text: 'EDUCATION',
            ),
            Tab(
              text: 'FINANCE',
            ),
            Tab(
              text: 'Social',
            ),
            Tab(
              text: 'text',
            )
          ],
        ),
              ],
              
            )
          ),
        ),
        )
      ),
      
      body: Padding(
        padding: EdgeInsets.only(left: 15,right: 5,top: 10),
        child: DashBody()
      ),
    );
  }
}