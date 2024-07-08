import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uas_21421028_tiyaandini/pages/Mainpage/ListChat.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.black12,
            child: 
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(13),
                backgroundColor: Colors.white,
              elevation: 0,
              ),
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.black45,), label: Text("Search", style: TextStyle(color: Colors.black38)
              )),
          ),
          Container(child: Container(
            color: Colors.white,
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {}, 
                      child: Text("ALL")
                    ),
                     TextButton(
                      onPressed: () {}, 
                      child: Text("Group")
                    ),
                    Expanded(child: Container()),
                     TextButton(
                      onPressed: () {}, 
                      child: Text("Create Group")
                    ),
                  ],
                ),

              ),
              const ListChat(),
              
            ],)
            ))
        ],
      ),
    );
  }
}
