import 'package:flutter/material.dart';
import 'package:luxeride/utils/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String customTitle;
  final String customMessage;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.customTitle,
    required this.customMessage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Show custom Snackbar when the button is tapped
        CustomSnackbar.showCustomSnackbar(
          context,
          customTitle,
          customMessage,
        );
        // Execute the onTap function
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              AppColors.secondaryColor,
              AppColors.darkGrayColor,
              Colors.greenAccent,
            ],
            begin: Alignment(-1, -4),
            end: Alignment(1, 4),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontFamily: 'halter',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class CustomSnackbar {
  static void showCustomSnackbar(
      BuildContext context, String title, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              message,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey, // Customize background color
        duration: const Duration(seconds: 3), // Customize duration
      ),
    );
  }
}

//textfield containers
class CustomTextField extends StatelessWidget {
  final String hint;
  final String name;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool obscureText;
  final bool isRequired;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.name,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.obscureText = false,
    this.isRequired = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          labelText: name,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          fillColor: const Color.fromARGB(232, 255, 255, 255),
          filled: true,
        ),
        validator: isRequired ? (value) => _validateField(value) : validator,
      ),
    );
  }

  String? _validateField(String? value) {
    if (value == null || value.isEmpty) {
      return '$name is required';
    }
    return null;
  }
}
