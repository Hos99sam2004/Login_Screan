import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({super.key});

  @override
  State<LoginScrean> createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      backgroundColor: Colors.amber,
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sign in to learn with Hossam",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 20,
                  decoration: BoxDecoration(color: Colors.black),
                )
              ],
            ),
            Column(
              children: [
                TextField(
                  controller: emailController,
                  // onSubmitted: (value) => setState(() {
                  //   emailControl.text = value;
                  // }),
                  onChanged: (value) => setState(() {
                    emailController.text = value;
                  }),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter Your Email",
                    label: Text("Email"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // ==========================================
                TextField(
                  // enabled: false,
                  controller: passwordController,
                  cursorColor: Colors.blueAccent,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    hintText: "Enter Your Password",
                    label: Text("Password"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child:
                        ElevatedButton(onPressed: () {}, child: Text("Login"))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Forget Password?"),
                ),
              ],
            ),
            Center(child: Text("OR Login With ")),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(300)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(LineIcons.twitter),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(300)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(LineIcons.facebookF),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(300)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(LineIcons.googlePlusG),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(" You Don't have an account ? Create New Account "))
          ],
        ),
      ),
    );
  }
}
