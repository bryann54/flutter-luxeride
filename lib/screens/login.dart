// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_luxeride/screens/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _HomeState();
}

class _HomeState extends State<Login> {
  get _obscurePassword => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xDF97F2F2),
        body: Center(
          child: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LUXERIDE',
                  style: TextStyle(
                    fontFamily: "Schyler",
                    color: Colors.grey[800],
                    letterSpacing: 1.5,
                    wordSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
                Image.asset(
                  'images/12.png',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.contain,
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 40, 0, 30),
                  child: Text(
                    "🚀Welcome, Let's...",
                    style: TextStyle(
                        fontFamily: 'Agbalumo-Regular',
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: 3,
                        fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        final screenHeight = MediaQuery.of(context).size.height;
                        return DefaultTabController(
                          length: 2,
                          child: SizedBox(
                            height: screenHeight / 0.7,
                            child: Column(
                              children: [
                                const TabBar(
                                  tabs: [
                                    Tab(text: 'Sign Up'),
                                    Tab(text: 'Log In'),
                                  ],
                                  indicatorColor:
                                      Colors.blue, // Change the color as needed
                                  labelColor:
                                      Colors.blue, // Change the color as needed
                                  unselectedLabelColor: Color.fromARGB(255, 0,
                                      0, 0), // Change the color as needed
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      // Sign Up Tab Content
                                      Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: Center(
                                            child: Form(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  TextFormField(
                                                    controller:
                                                        TextEditingController(),
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: 'Full Name ',
                                                      hintText: 'sam kioko',
                                                      border:
                                                          OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide()),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(7),
                                                    child: TextFormField(
                                                        controller:
                                                            TextEditingController(),
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText: 'email',
                                                          hintText:
                                                              'kiokosam@gmail.com',
                                                          border: OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide()),
                                                          // icon: Icon(Icons.email),
                                                        )),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(7),
                                                    child: TextFormField(
                                                      obscureText: true,
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'password',
                                                        border:
                                                            OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide()),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(7),
                                                    child: TextFormField(
                                                      obscureText: true,
                                                      decoration: const InputDecoration(
                                                          labelText:
                                                              'confirm password',
                                                          border: OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide())),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  Center(
                                                      child: ButtonTheme(
                                                    minWidth: double.infinity,
                                                    height: 50,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        // Navigate to the landing page when the button is pressed
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Landing()),
                                                        );
                                                      },
                                                      child:
                                                          const Text('sign up'),
                                                    ),
                                                  ))
                                                ],
                                              ),
                                            ),
                                          )),
                                      Container(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Center(
                                              child: Column(
                                            children: <Widget>[
                                              TextFormField(
                                                obscureText: false,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'email',
                                                  hintText:
                                                      'kiokosam@gmail.com',
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: TextFormField(
                                                  obscureText: true,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: 'password',
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide()),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Center(
                                                  child: ButtonTheme(
                                                minWidth: double.maxFinite,
                                                height: 70,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(24, 0, 24, 0),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    // Navigate to the landing page when the button is pressed
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Landing()),
                                                    );
                                                  },
                                                  child: const Text('log in'),
                                                ),
                                              ))
                                            ],
                                          ))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
