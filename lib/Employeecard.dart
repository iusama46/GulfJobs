import 'package:flutter/material.dart';
import 'package:share/share.dart';

class EmpCard extends StatefulWidget {
  @override
  _EmpCardState createState() => _EmpCardState();
}

class _EmpCardState extends State<EmpCard> {
  final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(90.0)),
      borderSide: BorderSide(
        color: Colors.transparent,
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text(
          'Create Employee Card',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                final RenderBox box = context.findRenderObject();
                Share.share('Share this App',
                    subject: 'share',
                    sharePositionOrigin:
                        box.localToGlobal(Offset.zero) & box.size);
              },
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/person.png'),
                radius: 70,
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: border,
                      border: border,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.purple[900],
                      ),
                      hintStyle: TextStyle(color: Colors.purple[900]),
                      filled: true,
                      fillColor: Colors.white24,
                      hintText: 'Enter Name'),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: border,
                      border: border,
                      prefixIcon: Icon(
                        Icons.work_outlined,
                        color: Colors.purple[900],
                      ),
                      hintStyle: TextStyle(color: Colors.purple[900]),
                      filled: true,
                      fillColor: Colors.white24,
                      hintText: 'Enter Designation Here'),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: border,
                      border: border,
                      prefixIcon: Icon(
                        Icons.call,
                        color: Colors.purple[900],
                      ),
                      hintStyle: TextStyle(color: Colors.purple[900]),
                      filled: true,
                      fillColor: Colors.white24,
                      hintText: 'Enter Contact Here'),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: border,
                      border: border,
                      prefixIcon: Icon(
                        Icons.home,
                        color: Colors.purple[900],
                      ),
                      hintStyle: TextStyle(color: Colors.purple[900]),
                      filled: true,
                      fillColor: Colors.white24,
                      hintText: 'Enter City Here'),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: border,
                      border: border,
                      prefixIcon: Icon(
                        Icons.blur_circular,
                        color: Colors.purple[900],
                      ),
                      hintStyle: TextStyle(color: Colors.purple[900]),
                      filled: true,
                      fillColor: Colors.white24,
                      hintText: 'Enter Address Here'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.purple[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
                child: Text(
                  "Create",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
