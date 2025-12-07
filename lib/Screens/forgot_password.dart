import 'package:flutter/material.dart';
import 'package:csc_302/Screens/login_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7EFE8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),

              // TOP IMAGE
              Center(
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/forget.jpeg"))
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // TITLE
              const Center(
                child: Text(
                  "Forgotten your password? 🤔",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),


              const Center(
                child: Text(
                  "We got you covered 👍",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Phone number or Email",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 5,),

              // NAME FIELD
              _inputField("Phone number/Email"),

              const SizedBox(height: 20),


              // CONTINUE BUTTON
              Center(
                child: SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1A713A),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Proceed"),
                  ),
                ),
              ),


              const SizedBox(height: 20),

              Center(
                child: Text(
                  "Try another way?",
                  style: TextStyle(
                      color: Color(0xFF1A713A),
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              const Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => Login()
                    ),);
                  },
                  child: Text(
                    "Return to Login page",
                    style: TextStyle(
                      color: Color(0xFF1A713A),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 200),

              Center(
                child: Text("© 2025 Relink AI Technologies. All rights reserved."),
              )
            ],
          ),
        ),
      ),
    );
  }

  // CUSTOM INPUT FIELD
  Widget _inputField(String hint, {bool obscure = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    );
  }
}

