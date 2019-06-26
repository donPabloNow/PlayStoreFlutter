import 'package:flutter/material.dart';


class UpdatesDetails extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconcolor;
  const UpdatesDetails({Key key, this.title, this.subtitle, this.icon, this.iconcolor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.only(top: 30),
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
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
              children: <Widget>[
                ListTile(
                  subtitle: Text(subtitle,style: TextStyle(fontFamily: 'SF'),),
              title: Text(title,style: TextStyle(fontFamily: 'SF',fontSize: 18)),
              leading: Container(
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconcolor
                ),
                child: Icon(icon,color: Colors.white,size: 30),
              ),
              trailing: FlatButton(
                color: Theme.of(context).primaryColor,
                child: Text('Update',style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sf'
                ),),
                onPressed: (){},
              ),
                ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)
                  ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10,top: 10,right: 5),
                  child: Column(
                  children: <Widget>[
                    Row(
                  children: <Widget>[
                    Text('Version 8.31',style: TextStyle(color: Colors.grey.shade600)),
                  ],
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(fontFamily: 'sf'),
                    text: 'Call recording—Capture special moments in a Skype call with your loved ones or record important meetings with colleagues.'
                  )
                )
                  ],
                ),
                )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(),
                  FlatButton(
                    child: Text('See release notes',style: TextStyle(fontFamily: 'sf',
                    color: Theme.of(context).primaryColor),),
                    onPressed: (){},
                  )
                ],
              )
              ],
            ),  
            );
  }
}