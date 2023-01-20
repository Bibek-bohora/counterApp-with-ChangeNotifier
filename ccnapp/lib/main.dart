//CounterApp with ChangeNotifier and the provider

// import 'package:ccnapp/utils/route.dart';
import 'package:ccnapp/utils/route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/counternotfier.dart';
import 'Screen/otherpage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterNotifier(),
    child: const Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        initialRoute: MyRoute.homeroute,
        routes: {
          MyRoute.homeroute: (context) => MainApp(),
          MyRoute.counter: (context) => Otherpage(),
        },
        home: MainApp());
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Catlog",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.yellow,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  child: Stack(children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                          size: 40,
                        )),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 243, 1, 1),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            "${Provider.of<CounterNotifier>(context).counter}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ))
                  ]),
                ),
              ),
            )
          ]),
      backgroundColor: Color.fromARGB(255, 238, 229, 229),
      body: Container(
        width: double.maxFinite,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ],
                    shape: BoxShape.circle,
                    color: Color.fromARGB(179, 243, 240, 223)),
                child: Center(
                    child: Text(
                  "${Provider.of<CounterNotifier>(context).counter}",
                  style: TextStyle(fontSize: 50),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ],
                    shape: BoxShape.circle,
                    color: Color.fromARGB(179, 248, 8, 228)),
                child: Center(
                    child: Text(
                  "${Provider.of<CounterNotifier>(context).counter}",
                  style: TextStyle(fontSize: 50),
                )),
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoute.counter);
        },
        child: Icon(Icons.open_in_new),
      ),
    );
  }
}
