import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/screens/homepage.dart';

class ConfirmationBox extends StatelessWidget {
  const ConfirmationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 400,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset('assets/Group.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Congratulations!',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: AppColors.green1,
                      fontWeight: FontWeight.w700,
                      fontSize: 25)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Your account is ready to use',
              style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 40,
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: MaterialButton(
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: const Color.fromARGB(255, 47, 183, 103),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
