import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import '../data/data.dart';
import './aboutpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.tealAccent,
                child: Center(
                  child: Text(
                    "MS Word Guide",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AboutPage();
                  }),
                );
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              onTap: () {
                launch(
                    "https://play.google.com/store/apps/details?id=np.suyogdhakal.msapp");
              },
              leading: Icon(Icons.star),
              title: Text("Rate"),
            ),
            ListTile(
              onTap: () {
                Share.share(
                    "Hi, download this app from https://play.google.com/store/apps/details?id=com.tencent.ig ");
              },
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("MS Word shortcuts"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            iconSize: 25.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }),
              );
            },
          )
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2.0,
          );
        },
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.tealAccent,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            title: Text(data[index]["key"]),
            subtitle: Text(data[index]["use"]),
          );
        },
      ),
    );
  }
}
