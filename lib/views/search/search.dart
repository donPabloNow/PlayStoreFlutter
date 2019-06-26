import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playstore/style/style.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Search',style: PlayStyle.appBarTitle),
          elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 10,bottom: 2),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 0),
                child: TextField(
                  cursorColor: Colors.transparent,
                  
                  decoration: InputDecoration(
                    hintText: 'Search',
                    icon: Icon(Icons.search),
                    hintStyle: TextStyle(
                      fontFamily: 'SF'
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.transparent
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    body: Padding(
      padding: EdgeInsets.only(top: 20,left: 15,right: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('RECENT SEARCH',style: TextStyle(fontFamily: 'sf',fontSize: 15,color: Colors.grey),),
              FlatButton(
                child: Text('CLEAR ALL',style: TextStyle(color: Theme.of(context).primaryColor,fontFamily: 'sf',fontSize: 15),),
                onPressed: (){},
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  child: ListTile(
                    leading: Container(
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                child: Icon(FontAwesomeIcons.twitter,color: Colors.white,),
              ),
              title: Text('Twitter',style: TextStyle(fontFamily: 'sf'),),
              subtitle: Text('Social Media App',style: TextStyle(fontFamily: 'SF'),),
                  ),
                ),
                Divider(),
                Container(
                  height: 80,
                  child: ListTile(
                    leading: Container(
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                child: Icon(FontAwesomeIcons.weixin,color: Colors.white,),
              ),
              title: Text('WeChat',style: TextStyle(fontFamily: 'sf'),),
              subtitle: Text('Social Media App',style: TextStyle(fontFamily: 'SF'),),
                  ),
                ),
              Divider(),
                Container(
                  height: 80,
                  child: ListTile(
                    leading: Container(
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple
                ),
                child: Icon(FontAwesomeIcons.viber,color: Colors.white,),
              ),
              title: Text('Viber',style: TextStyle(fontFamily: 'sf'),),
              subtitle: Text('Social Media App',style: TextStyle(fontFamily: 'SF'),),
                  ),
                )  
              ],
            ),
          ),
          
        ],
      ),
    ),  
    );
  }
}