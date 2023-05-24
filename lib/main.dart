import 'package:flutter/material.dart';
import 'package:zavala/tabBar.dart';

void main() => runApp(const Miaplicacion());

class Miaplicacion extends StatelessWidget {
  const Miaplicacion({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // A widget which will be started on application startup
      home: const mipaginainicio(title: 'PIZZERIA FANNY'),
    );
  }
}

class mipaginainicio extends StatelessWidget {
  final String title;
  const mipaginainicio({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar

          title: Text(title),

          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Inicio',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Estas en el inicio')));
              },
            ),
            //IconButton(
            //icon: const Icon(Icons.navigate_next),
            //tooltip: 'Ir a TabBar',
            //onPressed: () =>
            //  Navigator.push(context, MaterialPageRoute(builder: (context) {
            //return const TabBarr();
            //})),
            //),
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  //image: DecorationImage(
                  //image: AssetImage("images/a3.jpg"), fit: BoxFit.cover
                  //)
                ),
                child: Text(
                    ' Pizzeria Fanny   \n \n \n Las mejores pizzas a la leña, ven y disfruta.'),
              ),
              ListTile(
                title: const Text('Inicio'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('TabBar'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const TabBarr();
                })),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            ),
            Container(
                child:
                    const Text("        Zavala Franco \n       Irma Estefania",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          // backgroundColor: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                width: 250,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  //Border.all
                )),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            ),
            Container(
              width: 350,
              height: 180,
              decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  border: Border(
                    left: BorderSide(color: Colors.white, width: 0),
                    right: BorderSide(color: Colors.white, width: 0),
                    top: BorderSide(color: Colors.orange, width: 7),
                    bottom: BorderSide(color: Colors.orange, width: 7),
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/mifoto.jpeg"),
                    fit: BoxFit.fitHeight,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
            ),
            Container(
                child: const Text("              6-I \n    Programacion",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      // backgroundColor: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                width: 250,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 5,
                  ),
                ))
          ],
        ));
  }
}
