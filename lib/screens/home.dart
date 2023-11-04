import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;

 
  final List<Widget> _pages = [
    DefaultTabController(
      length: 3,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding: const EdgeInsets.all(6),
            child: Row(children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(49, 79, 113, 0.2),
                            spreadRadius: 1,
                            blurRadius: 1)
                      ]),
                  child: const Center(child: Text("bmw")),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(49, 79, 113, 0.2),
                            blurRadius: 1)
                      ]),
                  child: const Center(child: Text('audi')),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(49, 79, 113, 0.2),
                            blurRadius: 1)
                      ]),
                  child: const Center(child: Text('toyota')),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(49, 79, 113, 0.2),
                            blurRadius: 1)
                      ]),
                  child: const Center(child: Text('benz')),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(49, 79, 113, 0.2),
                            blurRadius: 1)
                      ]),
                  child: const Center(child: Text('porche')),
                ),
              ),
            ])),
      ),
    ),
    Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.00, -1.00),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                child: Text('merc'),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Image.asset(
                  'images/12.png',
                  width: 203,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      ],
    ),

    //page2
    const Text('Page 2'),
    //page3
    const Text('Page 3'),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        elevation: 9,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Add action when the profile icon is pressed
            },
          ),
        ],
        // Set your app name here
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: _pages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
