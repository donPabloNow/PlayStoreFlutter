import 'package:flutter/material.dart';


class RowTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const RowTile({Key key, this.title, this.icon, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle
                    ),
                    child: Icon(icon,color: Colors.white),
                  ),
                  title: Text(title,style: TextStyle(
                    fontFamily: 'sf',
                    fontSize: 17
                  ),),
                  trailing: Icon(Icons.navigate_next),
                );
  }
}