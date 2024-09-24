import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/appbar/appbar.dart';
import 'package:luxeride/utils/constants/colors.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  // Add more controllers for other details as needed

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    // Dispose other controllers if needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar1(title: 'Profile'),
      body: Container(
        color: AppColors.lightGrayColor,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Add logic to select/change profile image
              },
              child: const CircleAvatar(
                radius: 50,
                // Add logic to display profile image
                backgroundImage: AssetImage('assets/prof.png'),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primaryColor,
              ),
              child: const Center(
                  child: Text(
                'Save',
                style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
              )),
            )
          ],
        ),
      ),
    );
  }
}
