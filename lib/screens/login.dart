import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/screens/fill_in.dart';
import 'package:trial2/square_tile.dart';

class LogIn extends StatefulWidget {
  LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _isPasswordVisible = false;
  bool _isChecked = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back, size: 20)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Login to your Account',
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(vertical: 15.0),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: AppColors.hinttext),
                      prefixIcon: Icon(
                        Icons.email,
                        color: AppColors.hinttext,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.inputinactive)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.green1)),
                      filled: true,
                      fillColor: AppColors.inputinactive)),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(vertical: 15.0),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: AppColors.hinttext),
                      prefixIcon: Icon(
                        Icons.password,
                        color: AppColors.hinttext,
                      ),
                      suffixIcon: IconButton(
                        icon: _isPasswordVisible
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.inputinactive)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.green1)),
                      filled: true,
                      fillColor: AppColors.inputinactive)),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                    activeColor: AppColors.green1,
                  ),
                  Text(
                    'Remember me',
                    style: GoogleFonts.montserrat(),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 20, right: 20),
              child: Container(
                  height: 40,
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: MaterialButton(
                    elevation: 0,
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: AppColors.green1,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FillIn()));
                    },
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('or continue with'),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ))
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SquareTile(svgPath: 'assets/icons/apple.svg'),
                SquareTile(svgPath: 'assets/icons/google.svg'),
                SquareTile(svgPath: 'assets/icons/facebook.svg')
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.montserrat(),
                ),
                Text(
                  'Sign in',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: AppColors.green1,
                          fontWeight: FontWeight.w600)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
