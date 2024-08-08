import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headphones_store/Login%20and%20singup/login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: ScreenHeight,
        width: ScreenWidth,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff171717), Color(0xff000000)])),
        child: Center(
          child: Material(
            color: Colors.transparent,
            elevation: 5,
            child: Container(
              height: ScreenHeight * 0.7,
              width: ScreenWidth * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff171717), Color(0xff000000)])),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.white70),
                      decoration: const InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.white70),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white70,
                          )),
                    ),
                    SizedBox(
                      height: ScreenHeight*0.01,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white70),
                      decoration: const InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white70),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.white70,
                          )),
                    ),
                    SizedBox(
                      height: ScreenHeight * 0.02,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.white70),
                      decoration: const InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white70),
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.white70,
                          )),
                    ),
                    SizedBox(
                      height: ScreenHeight * 0.02,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: ScreenWidth * 0.03),
                      ),
                    ),
                    SizedBox(
                      height: ScreenHeight * 0.04,
                    ),
                    Container(
                      height: ScreenHeight * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(
                              fontSize: ScreenWidth * 0.05,
                              color: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenHeight * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            ));
                      },
                      child: Text(
                        "Already have an Account? Login",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: ScreenWidth * 0.03),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
