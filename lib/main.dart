import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MatApp());
}

class MatApp extends StatelessWidget {
  const MatApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaff());
  }
}

class Scaff extends StatefulWidget {
  const Scaff({super.key});
  @override
  State<Scaff> createState() => _Scaff();
}

class _Scaff extends State<Scaff> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0f0c29), Color(0xff24243e)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '$value',
                style: TextStyle(color: Colors.white, fontSize: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    hoverColor: Colors.green,
                    onPressed:
                        () => {
                          setState(() {
                            value = value + 1;
                          }),
                        },
                    icon: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                      size: 75,
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    hoverColor: Colors.red,
                    onPressed:
                        () => {
                          setState(() {
                            if (value != 0) {
                              value = value - 1;
                            } else {
                              Alert(
                                context: context,
                                title: "Negative Error",
                                desc: "You Cannot Count Negative!",
                              ).show();
                            }
                          }),
                        },
                    icon: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                      size: 75,
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    hoverColor: Colors.brown,
                    onPressed:
                        () => {
                          setState(() {
                            value = 0;
                          }),
                        },
                    icon: Icon(Icons.restore, color: Colors.white, size: 75),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
