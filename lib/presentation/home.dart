import 'package:flutter/material.dart';
import 'package:ration_zone/presentation/profile.dart';
import 'package:ration_zone/presentation/shophome.dart';
import 'package:ration_zone/presentation/supplycohome.dart';
import 'package:ration_zone/services/profileapi.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(199, 199, 199, 1),
          title: Text('HOME'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero, // Remove any extra padding from the list
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 190, 183, 162),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.person,
                      size: 60,
                      color: Color.fromARGB(255, 3, 1, 10),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Welcome User',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () async {
                  Map<String, dynamic> pofiedata = await getUserProfile();
                  // Handle the navigation when 'Profile' is tapped
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctxt) => Profile(
                                profiledata: pofiedata,
                              )));
                },
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Ration Shop Card
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shophome()),
                  );
                },
                child: Card(
                  color: const Color.fromARGB(255, 2, 107, 177),
                  child: Container(
                    height: 200,
                    child: Center(
                      child: Text(
                        'RATION SHOP',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              
              // SupplyCo Card
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Supplycohome()),
                  );
                },
                child: Card(
                  color: const Color.fromARGB(255, 253, 103, 33),
                  child: Container(
                    height: 200,
                    child: Center(
                      child: Text(
                        'SUPPLYCO',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
