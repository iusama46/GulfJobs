import 'package:flutter/material.dart';

class LatestJobsPage extends StatefulWidget {
  @override
  _LatestJobsPageState createState() => _LatestJobsPageState();
}

class _LatestJobsPageState extends State<LatestJobsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text(
          'Latest Jobs',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 20.0, bottom: 50),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: Container(
                height: 100,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.fireplace,
                              size: 30,
                              color: Colors.purple[900],
                            ),
                            SizedBox(width: 5),
                            Text(
                              'CANADA - HELPERS - 190 VACANCIES',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.purple[900],
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple[900],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            child: Row(
                              children: [
                                Text(
                                  'View',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.purple[900]),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
