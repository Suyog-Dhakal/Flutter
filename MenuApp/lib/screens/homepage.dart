import 'package:MenuApp/Menu/beverages.dart';
import 'package:MenuApp/Menu/biryani.dart';
import 'package:MenuApp/Menu/burger.dart';
import 'package:MenuApp/Menu/chowmein.dart';
import 'package:MenuApp/Menu/desert.dart';
import 'package:MenuApp/Menu/momo.dart';
import 'package:MenuApp/Menu/pizza.dart';
import 'package:MenuApp/Menu/sandwich.dart';
import 'package:MenuApp/Menu/starter.dart';
import 'package:MenuApp/screens/aboutpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text(
                      "Bluz De`Cafe",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //listtile for home icon
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home",
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ),
            Divider(
              thickness: 5.0,
            ),

            //listtile for about icon
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
              title: Text("About",
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ),
            Divider(
              thickness: 5.0,
            ),

            //listtile for contact
            ListTile(
              onTap: () {},
              leading: Icon(Icons.phone),
              title: Text("Contact",
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ),
            Divider(
              thickness: 5.0,
            ),

            //listtile for location
            ListTile(
              onTap: () {},
              leading: Icon(Icons.location_searching),
              title: Text("Location",
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ),
            Divider(
              thickness: 5.0,
            ),

            //listtile for rating
            //listtile for location
            ListTile(
              onTap: () {},
              leading: Icon(Icons.star),
              title: Text("Rate",
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ),
            Divider(
              thickness: 5.0,
            ),

            //listtile for share
            //listtile for location
            ListTile(
              onTap: () {},
              leading: Icon(Icons.share),
              title: Text("Share",
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ),
            Divider(
              thickness: 5.0,
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Bluz De`Cafe"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          //listtile for starter
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
            ),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Starter();
                  }),
                );
              },
              leading: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey,
                child: Text(
                  "1",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              title: Text("Starter"),
            ),
          ),
          Divider(
            thickness: 2.0,
          ),

          //listtile for momo
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Momo();
                }),
              );
            },
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text(
                "2",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Text("Mo:Mo"),
          ),
          Divider(
            thickness: 2.0,
          ),

          //listtile for chowmein
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Chowmein();
                }),
              );
            },
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text(
                "3",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Text("Chowmein"),
          ),
          Divider(
            thickness: 2.0,
          ),

          //listtile of burger
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Burger();
                }),
              );
            },
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text(
                "4",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Text("Burger"),
          ),
          Divider(
            thickness: 2.0,
          ),

          //listtile for pizza
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Pizza();
                }),
              );
            },
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text(
                "5",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Text("Pizza"),
          ),
          Divider(
            thickness: 2.0,
          ),

          //listtile for biryani
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Biryani();
                }),
              );
            },
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text(
                "6",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Text("Biryani"),
          ),
          Divider(
            thickness: 2.0,
          ),

          //listtile for Sandwich
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Sandwich();
                }),
              );
            },
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text(
                "7",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Text("Sandwich"),
          ),
          Divider(
            thickness: 2.0,
          ),

          //listtile for Beverages
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Beverages();
                }),
              );
            },
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text(
                "8",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Text("Beverages"),
          ),
          Divider(
            thickness: 2.0,
          ),

          //listtile for Desert
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Desert();
                }),
              );
            },
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text(
                "9",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Text("Desert"),
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
