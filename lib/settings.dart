import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text(
          'Select Category',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: Container(),
      ),
      body: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 20.0, bottom: 50),
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 90, left: 10, right: 10),
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: List.generate(
                10,
                (index) {
                  return Card(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.person_pin_rounded,
                            size: 40,
                            color: Colors.purple[900],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Waiter Job',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10.0),
                      height: 150.0,
                      width: 150.0,
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
