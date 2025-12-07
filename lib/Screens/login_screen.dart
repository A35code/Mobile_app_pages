import 'package:flutter/material.dart';
import 'package:csc_302/Screens/forgot_password.dart';
import 'package:csc_302/Screens/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              const SizedBox(height: 30),

              // TOP IMAGE
              Center(
               child: Container(
                 width: 130,
                 height: 130,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   image: DecorationImage(image: AssetImage("assets/images/login.jpeg"))
                 ),
               ),
              ),


              const SizedBox(height: 15),

              // TITLE
              const Center(
                child: Text(
                  "Welcome Back ! 👋",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ) ,

              const SizedBox(height: 10),

              const Center(
              child: Text(
                "Let's continue where you left off.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ) ,


              const SizedBox(height: 25),

              const Text(
                "Name",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 7),

              // NAME FIELD
              _inputField("Enter your name"),

              const SizedBox(height: 20),

              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 7),

              // NAME FIELD
              _inputField("Password", obscure: true),

              const SizedBox(height: 20),

              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => ForgotPassword()
                    ),);
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color(0xFF1A713A),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

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
                    child: const Text("Login"),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              const Center(
                child: Text(
                  "Don't have an account ?",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(height: 5),

              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => Register()
                    ),);
                  },
                  child: Text(
                    "Register here",
                    style: TextStyle(
                      decoration:
                      TextDecoration.underline,
                      color: Color(0xFF1A713A),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 180),

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

