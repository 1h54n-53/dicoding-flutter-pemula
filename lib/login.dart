import 'package:flutter/material.dart';
import 'package:proyek_akhir/main_screen.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Submission Satu"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: const Text(
                    'FORM LOGIN',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  child: const Text("LOGIN"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MainScreen();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
