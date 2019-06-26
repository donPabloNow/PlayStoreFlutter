import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playstore/views/search/search.dart';

import 'collections/collection.dart';
import 'dashboard/dash.dart';
import 'profile/profile.dart';
import 'updates/updates.dart';




class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPage = 0;
  Widget getPage(int index) {
    if (index == 0) {
      return DashView();
    }
    if (index == 1) {
      return CollectionView();
    }
    if (index==2) {
      return SearchView();
    }
    if (index == 3) {
      return UpdatesV();
    }
    if (index == 4) {
      return ProfileView();
    }
    // A fallback, in this case just PageOne
    return DashView();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: getPage(currentPage),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Theme.of(context).primaryColor,
          onTap: (int index) {
            setState(() {
             currentPage =index;
            });
          },
          currentIndex: currentPage,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.googlePlay),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.layerGroup),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_download,size: 28,),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userAlt),
              title: Text('')
            )
          ],
        ),
      );
  }
}