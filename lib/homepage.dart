import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
// import 'package:http/http.dart' as http;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'cart.dart';
// import 'clouditem.dart';
// import 'package:medico/ProductDataModel.dart';
// import 'searchbar.dart';
// import 'addmedicines.dart';
import 'addpatient.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MEDICINE SHOPPING APPLICATION',
//       //theme: ThemeData(fontFamily: 'FredokaOne'),
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         fontFamily: 'Fredoka One',
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //-----------------------------
  // List<dynamic> products = alldata();
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LAB",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontFamily: "Fredoka One"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              // Navigator.of(context).push(MaterialPageRoute(
              // builder: (context) => CloudFirestoreSearch()));
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => addpatient()));
          },
          tooltip: 'cart',
          child: const Icon(Icons.person_add_alt_1)),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "GAUTAM",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("GAUTAMJAISWAL@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "G",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' CUSTOMERS '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('PRICE LIST'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Add Patient'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => addpatient()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.medical_services_rounded),
              title: const Text('Uncollected Samples'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.event_note_sharp),
              title: const Text('Collected  Samples'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.watch_later_outlined),
              title: const Text('Pending Result'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.done),
              title: const Text('Completed test'),
              onTap: () {
                // Navigator.of(context)
                // .push(MaterialPageRoute(builder: (context) => addmed()));
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
