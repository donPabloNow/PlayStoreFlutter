import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playstore/style/style.dart';
import 'package:playstore/views/updates/up_details.dart';



class UpdatesV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Updates',style: PlayStyle.appBarTitle),
          elevation: 0.0,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10,right: 10,top: 0),
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple
                  ]
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
             new BoxShadow(  
            color: Colors.black12,
           blurRadius: 10.0,
         offset: new Offset(0.0, 10.0),
           ),
          ],
              ),
              child: ListTile(
                title: Text('Update All Apps',style: TextStyle(fontFamily: 'sf',
                color: Colors.white,fontSize: 20),),
                subtitle: Text('',style: TextStyle(
                  color: Colors.white,
                ),),
                trailing: FlatButton(
                  child: Text('Update ALL',style: TextStyle(
                    fontFamily: 'sf',
                    color: Theme.of(context).primaryColor
                  ),),
                  onPressed: (){},
                  color: Colors.white,
                ),
              ),
            ),
            ///////////////////////////////////
            UpdatesDetails(
              icon: FontAwesomeIcons.skype,
              iconcolor: Colors.blue,
              title: 'Skype',
              subtitle: 'Microsoft',
            ),
            UpdatesDetails(
              icon: FontAwesomeIcons.lyft,
              iconcolor: Colors.pink,
              title: 'Lyft',
              subtitle: 'Lyft, inc.',
            )
          ],
        ),
      ),
    );
  }
}