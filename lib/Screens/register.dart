import 'package:flutter/material.dart';
import 'package:csc_302/Screens/login_screen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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

              // TOP IMAGE
              Center(
                child: Image.asset(
                  'assets/images/brain_ai.jpg',
                  width: 250,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 3),

              // TITLE
              Center(
                child: const Text(
                  "Welcome to Relink AI Technologies",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 3),

              // SUBTITLE
              Center(
                child: const Text(
                  "Turning the impossible into reality",
                  style: TextStyle(fontSize: 14),
                ),
              ),

              const SizedBox(height: 10),

              // SIGN UP HEADER
              Center(
                child: const Text(
                  "Sign up here",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 3),

              const Text(
                "Name",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // NAME FIELD
              _inputField("Full name"),

              const SizedBox(height: 7),

              const Text(
                "Phone Number",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // PHONE ROW
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: _inputField("(+234)"),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: _inputField("Phone Number"),
                  ),
                ],
              ),

              const SizedBox(height: 7),

              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // PASSWORD
              _inputField("Enter password", obscure: true),

              const SizedBox(height: 20),

              // CONTINUE BUTTON
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A713A),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Continue"),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Text(
                    "By clicking Continue, I agree with the ",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Terms of Service",
                    style: TextStyle(fontSize: 14,
                    decoration: TextDecoration.underline),
                  )
                ],
              ),

              Row(
                children: [
                  Text(
                    "Non-Discriminatory Policy ",
                    style: TextStyle(fontSize: 14,
                    decoration: TextDecoration.underline),
                  ),
                  Text(
                    "and ",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 14,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),

              const SizedBox(height: 10),
              
              const Center(
                  child: Text(
                      "OR", style: 
                  TextStyle(fontSize: 14)
                  )
              ),

              const SizedBox(height: 10),

              // SOCIAL BUTTONS
              _socialButton("Continue with Facebook",
                  "assets/images/facebook.png"),
              const SizedBox(height: 10),

              _socialButton("Continue with Google",
                  "assets/images/google.png"),
              const SizedBox(height: 10),

              _socialButton("Continue with Email",
                  "assets/images/email.png"),

              const SizedBox(height: 10),

              Center(child: const Text("Registered before ?")),

              const SizedBox(height: 7),

              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => Login()
                    ),);
                  },
                  child: Text(
                    "Click here to Login",
                    style: TextStyle(
                      decoration:
                      TextDecoration.underline,
                      color: Color(0xFF1A713A),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
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
        border: Border.all(color: Colors.grey),
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

  // CUSTOM SOCIAL BUTTON
  Widget _socialButton(String text, String iconPath) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.grey, width: 2),
        ),
        child : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 15,),
            Text(
              text,
              style: const TextStyle(color: Colors.black),
            )
          ],
        )
      ),
    );
  }
}