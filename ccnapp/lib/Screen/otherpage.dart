//othe page of counter to
//to aproacto smame state in other page alsow

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/counternotfier.dart';

class Otherpage extends StatelessWidget {
  const Otherpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("second page"),
        ),
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
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Provider.of<CounterNotifier>(context, listen: false)
                          .dicrementCounter();
                    },
                    child: Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.purple, shape: BoxShape.circle),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Provider.of<CounterNotifier>(context, listen: false)
                          .resetCounter();
                    },
                    child: Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.purple, shape: BoxShape.circle),
                      child: Icon(
                        Icons.lock_reset,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Provider.of<CounterNotifier>(context, listen: false)
                          .incrementCounter();
                    },
                    child: Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.purple, shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
