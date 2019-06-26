import 'package:flutter/material.dart';
import 'package:playstore/style/style.dart';

import 'c_c.dart';





class CollectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Collections',style: PlayStyle.appBarTitle),
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
    body: ListView(
      children: <Widget>[
        CC(
          title: 'Gaming',
        ),
        CC(
          title: 'Best Apps',
        ),
        CC(
          title: 'Best apps',
        )
      ],
    ),  
    );
  }
}