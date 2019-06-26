import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'row_tile.dart';
class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          margin: EdgeInsets.only(top: 50),
            child: ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                   boxShadow: <BoxShadow>[
             new BoxShadow(  
            color: Colors.black12,
           blurRadius: 10.0,
         offset: new Offset(0.0, 5.0),
           ),
          ],
                ),
                child: Icon(FontAwesomeIcons.userAlt),
              ),
              title: Text('Steve Jobs'),
              subtitle: Text('admin@gmail.com'),
              trailing: FlatButton(
                child: Text('Edit',style: TextStyle(
                  fontFamily: 'sf',
                  color: Theme.of(context).primaryColor
                ),),
                onPressed: (){},
              ),
            ),
          ),  
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
        children: <Widget>[
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Column(
              children: <Widget>[
               Row(
                 children: <Widget>[
                   Text('   Account',style: TextStyle(
                     fontFamily: 'sf',
                     fontSize: 18,
                     color: Colors.grey
                   ),)
                 ],
               ),
               RowTile(
                 title: 'My Apps & games',
                 color: Colors.blue,
                 icon: Icons.apps,
               ),
                Divider(),
              RowTile(
                 title: 'Subscriptions',
                 color: Colors.green,
                 icon: Icons.sync,
               ),
                Divider(),
             RowTile(
                 title: 'Wishlist',
                 color: Colors.purple,
                 icon: Icons.done_all,
               ),
                Divider(),    
              ],
            ),
          ),

        
          Padding(
            padding: EdgeInsets.only(left: 5,right: 10,top: 20),
            child: Column(
              children: <Widget>[
               Row(
                 children: <Widget>[
                   Text('   Settings',style: TextStyle(
                     fontFamily: 'sf',
                     fontSize: 18,
                     color: Colors.grey
                   ),)
                 ],
               ),
               RowTile(
                 title: 'Payments',
                 color: Colors.blue,
                 icon: Icons.credit_card,
               ),
                Divider(),
              RowTile(
                 title: 'Play Protect',
                 color: Colors.green,
                 icon: Icons.verified_user,
               ),
                Divider(),
             RowTile(
                 title: 'About PlayStore',
                 color: Colors.deepOrange.shade700,
                 icon: Icons.info,
               ),
                Divider(),    
              ],
            ),
          )  
        ],
      ),
      )
    );
  }
}