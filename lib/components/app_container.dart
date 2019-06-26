import 'package:flutter/material.dart';

import 'app_details.dart';

class AppContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  const AppContainer({Key key, this.icon, this.title, this.subtitle, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 90,
            margin: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
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
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (buildContext) => Appdetails()
                ));
              },
              subtitle: Text(subtitle,style: TextStyle(fontFamily: 'SF'),),
              title: Text(title,style: TextStyle(fontFamily: 'SF',fontSize: 18)),
              leading: Container(
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color
                ),
                child: Icon(icon,color: Colors.white,),
              ),
              trailing: FlatButton(
                child: Text('install',style: TextStyle(color: Colors.white),),
                color: Theme.of(context).primaryColor,
                onPressed: (){},
              ),
            ),
          );
  }
}