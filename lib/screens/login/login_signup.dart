import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:luxeride/core/string.dart';
import 'package:luxeride/utils/constants/colors.dart';
import '../../utils/constants/buttons.dart';
import '../mainscreen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController phonenumber = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkGrayColor,
          title: Container(
              height: 150,
              child: Image.asset('assets/Luxeride__1_-removebg-preview.png')),
          bottom: TabBar(
            tabs: [
              Tab(text: login),
              Tab(text: signup),
            ],
            labelColor: AppColors.secondaryColor,
            unselectedLabelColor: AppColors.whiteColor,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontSize: 14, color: AppColors.red),
          ),
        ),
        body: TabBarView(
          children: [
            // Login tab
            Center(
              child: Container(
                color: const Color.fromARGB(33, 141, 142, 152),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            welocme,
                            style: TextStyle(
                                fontSize: 30,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryColor),
                          ),
                        ],
                      ),
                    ),
                    CustomTextField(
                      hint: 'Enter phone number',
                      name: 'phonenumber',
                      keyboardType: TextInputType.phone,
                      controller: phonenumber,
                      isRequired: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'You will receive an OTP to verify your account.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'SMS charges may apply',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 150),
                    CustomButton(
                      text: login,
                      onTap: () {},
                      customMessage: 'Logged in successfully',
                      customTitle: login.toUpperCase(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don\'t have an account?  ',
                              style: TextStyle(fontSize: 17)),
                          GestureDetector(
                            onTap: () {
                              DefaultTabController.of(context).animateTo(1);
                            },
                            child: Text(
                              signup,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: AppColors.secondaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Sign up tab
            Container(
              color: const Color.fromARGB(33, 141, 142, 152),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    CustomTextField(
                      hint: 'Create your username',
                      name: 'Username',
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      isRequired: true,
                    ),
                    CustomTextField(
                      hint: 'Enter phone number',
                      name: 'phonenumber',
                      keyboardType: TextInputType.phone,
                      controller: emailController,
                      isRequired: true,
                    ),
                    CustomTextField(
                      hint: 'Input your email',
                      name: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      isRequired: true,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('OR',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(251, 31, 193, 169),
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text('Continue Sign up with:',
                        style: TextStyle(fontSize: 18)),
                    const SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: AppColors.lightGrayColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Image.asset(
                            'assets/google.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      text: signup,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mainscreen()),
                        );
                      },
                      customTitle: signup,
                      customMessage: 'Successfully signed up',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?  ',
                              style: TextStyle(fontSize: 17)),
                          GestureDetector(
                            onTap: () {
                              DefaultTabController.of(context).animateTo(0);
                            },
                            child: Text(
                              login,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: AppColors.secondaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
