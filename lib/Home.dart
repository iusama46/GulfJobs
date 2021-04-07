import 'package:flutter/material.dart';
import 'package:golf_jobs/Employeecard.dart';
import 'package:golf_jobs/Globe.dart';
import 'package:golf_jobs/jobdetails.dart';
import 'package:golf_jobs/latestjobs.dart';
import 'package:golf_jobs/settings.dart';
import 'package:share/share.dart';

class HomePageBar extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<HomePageBar> {
  PageController _myPage = PageController(keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(
                  Icons.home,
                  color: Colors.purple[900],
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(
                  Icons.star,
                  color: Colors.purple[900],
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(
                  Icons.list,
                  color: Colors.purple[900],
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(
                  Icons.circle,
                  color: Colors.purple[900],
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(3);
                  });
                },
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _myPage,
        onPageChanged: (int) {
          print('Page Changes to index $int');
        },
        children: <Widget>[
          Scaffold(
            extendBody: true,
            appBar: AppBar(
              backgroundColor: Colors.purple[900],
              title: Text(
                'Gulf Jobs',
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
            drawer: Drawer(
              child: Container(
                color: Colors.purple[900],
                child: ListView(
                  // Important: Remove any padding from the ListView.

                  children: <Widget>[
                    DrawerHeader(
                      child: Container(),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/nature.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.home),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        _myPage.jumpToPage(0);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.star),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Saved",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        _myPage.jumpToPage(1);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.group_work_outlined),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Countries",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.circle),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Resources",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        _myPage.jumpToPage(3);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.person),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Employee card",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmpCard(),
                            ));
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.settings),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingsPage(),
                            ));
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "About us",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
            endDrawer: Drawer(),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0, bottom: 50),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //latest jobs
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Latest jobs',
                              style: TextStyle(
                                  color: Colors.purple[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
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
                                      'View All',
                                      style:
                                          TextStyle(color: Colors.purple[900]),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: Container(
                              height: 100,
                              width: 180,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => JobsDetailsPage(),
                                      ));
                                },
                                child: Card(
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.fireplace,
                                          size: 40,
                                          color: Colors.purple[900],
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Safety offiver required in Qatar',
                                            style: TextStyle(
                                                color: Colors.purple[900],
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //categories

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jobs by categories',
                              style: TextStyle(
                                  color: Colors.purple[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
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
                                      'View All',
                                      style:
                                          TextStyle(color: Colors.purple[900]),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: Container(
                              height: 100,
                              width: 120,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LatestJobsPage(),
                                      ));
                                },
                                child: Card(
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.work,
                                          size: 30,
                                          color: Colors.purple[900],
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Driver Jobs',
                                              style: TextStyle(
                                                  color: Colors.purple[900],
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //by country

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jobs by countires',
                              style: TextStyle(
                                  color: Colors.purple[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
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
                                      'View All',
                                      style:
                                          TextStyle(color: Colors.purple[900]),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: Container(
                              height: 100,
                              width: 120,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LatestJobsPage(),
                                      ));
                                },
                                child: Card(
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/usa.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'USA',
                                              style: TextStyle(
                                                  color: Colors.purple[900],
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // resources
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jobs by Resources',
                              style: TextStyle(
                                  color: Colors.purple[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
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
                                      'View All',
                                      style:
                                          TextStyle(color: Colors.purple[900]),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5),
                          child: Container(
                            height: 70,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LatestJobsPage(),
                                    ));
                              },
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Dawn New',
                                        style: TextStyle(
                                            color: Colors.purple[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Scaffold(
            extendBody: true,
            appBar: AppBar(
              backgroundColor: Colors.purple[900],
              title: Text(
                'Saved',
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
            drawer: Drawer(
              child: Container(
                color: Colors.purple[900],
                child: ListView(
                  // Important: Remove any padding from the ListView.

                  children: <Widget>[
                    DrawerHeader(
                      child: Container(),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/nature.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Saved",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.group_work_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Countries",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Resources",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Employee card",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingsPage(),
                            ));
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "About us",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
            endDrawer: Drawer(),
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => JobsDetailsPage(),
                              ));
                        },
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
                                              fontSize: 12,
                                              color: Colors.purple[900]),
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
            ),
          ),
          Scaffold(
            extendBody: true,
            appBar: AppBar(
              backgroundColor: Colors.purple[900],
              title: Text(
                'Jobs by Categories',
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
            drawer: Drawer(
              child: Container(
                color: Colors.purple[900],
                child: ListView(
                  // Important: Remove any padding from the ListView.

                  children: <Widget>[
                    DrawerHeader(
                      child: Container(),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/nature.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Saved",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.group_work_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Countries",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Resources",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Employee card",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingsPage(),
                            ));
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "About us",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
            endDrawer: Drawer(),
            body: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0, bottom: 50),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 90, left: 10, right: 10),
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    shrinkWrap: true,
                    children: List.generate(
                      10,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LatestJobsPage(),
                                ));
                          },
                          child: Card(
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              padding: EdgeInsets.all(10.0),
                              height: 150.0,
                              width: 150.0,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )),
          ),
          Scaffold(
            extendBody: true,
            appBar: AppBar(
              backgroundColor: Colors.purple[900],
              title: Text(
                'Jobs by Resource',
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
            drawer: Drawer(
              child: Container(
                color: Colors.purple[900],
                child: ListView(
                  // Important: Remove any padding from the ListView.

                  children: <Widget>[
                    DrawerHeader(
                      child: Container(),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/nature.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Saved",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.group_work_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Countries",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Resources",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Employee card",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingsPage(),
                            ));
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "About us",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
            endDrawer: Drawer(),
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
                      height: 70,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LatestJobsPage(),
                              ));
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Indeec.com',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.purple[900],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
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
            ),
          ),
        ],
        physics:
            NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
      floatingActionButton: Container(
        height: 60.0,
        width: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: FittedBox(
            child: FloatingActionButton(
                backgroundColor: Colors.purple[900],
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GlobeClicked(),
                      ));
                },
                child: Image.asset(
                  'assets/globe.png',
                  height: 30,
                  width: 30,
                )
                // elevation: 5.0,
                ),
          ),
        ),
      ),
    );
  }

  globeIconClick() {
    Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text(
          'Gulf Jobs',
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
      drawer: Drawer(
        child: Container(
          color: Colors.purple[900],
          child: ListView(
            // Important: Remove any padding from the ListView.

            children: <Widget>[
              DrawerHeader(
                child: Container(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/nature.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Saved",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.group_work_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Countries",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Resources",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Employee card",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ListTile(
                title: Row(
                  children: [
                    Text(
                      "About us",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(),
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
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Card(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/usa.png",
                            ),
                            Text('America')
                          ],
                        ),
                        padding: EdgeInsets.all(20.0),
                        height: 135.0,
                        width: 150.0,
                      ),
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
