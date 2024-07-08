import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uas_21421028_tiyaandini/pages/Mainpage/body.dart';

class MainPage extends StatefulWidget {
  static String routeName = "/";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, dynamic>> menu = [
    {
      "title": "Chat",
      "icon": Icon(Icons.chat),
    },
 {
      "title": "Teman",
      "icon": Icon(Icons.person_2),
    },
    {
      "title": "Moment",
      "icon": Icon(Icons.camera_enhance),
    },
    {
      "title": "Profil",
      "icon": Icon(Icons.person),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Container(
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "HalloChat",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Mencari Teman Sefrekuensi",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ]),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.contact_phone,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 60,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color.fromARGB(255, 121, 122, 123),
          selectedItemColor: Colors.blue,
          unselectedLabelStyle: TextStyle(color: Color.fromARGB(255, 110, 112, 113)),
          items: menu.map((e) {
         return BottomNavigationBarItem(icon: e['icon'], label: e['title'] );
            }).toList(),
            
          ),
      ),
    );
  }
}
