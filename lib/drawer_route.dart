import 'package:flutter/material.dart';
import 'drawerbody_app.dart';
import 'drawerbodycontent_app.dart';

class DrawerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Jogo da Forca",
          ),
          centerTitle: true,
        ),
        body: Container(),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/splashscreen.png'),
                  ),
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.transparent),
                  accountName: Text(
                    "Rodrigo Faustino",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: Text(
                    "rfaustino007@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/drawer/avatar.jpg'),
                  ),
                  otherAccountsPictures: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/drawer/avatar2.jpg'),
                    ),
                  ],
                ),
              ),
              DrawerBodyApp(
                child: DrawerBodyContentApp(),
              ),
            ],
          ),
        ));
  }
}
