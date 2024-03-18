import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/screens/booking3.dart';
import 'package:trial2/screens/booking_1.dart';

class Booking2 extends StatefulWidget {
  const Booking2({super.key});

  @override
  State<Booking2> createState() => _Booking2State();
}

class _Booking2State extends State<Booking2> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Booking1()),
            );
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 20,
        ),
        title: Text(
          'Name of Reservation',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontWeight: FontWeight.w700)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          children: [
            DropdownButtonFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsetsDirectional.symmetric(vertical: 15.0),
                  hintText: 'Title',
                  hintStyle: TextStyle(color: AppColors.hinttext),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.inputinactive)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.green1)),
                  filled: true,
                  fillColor: AppColors.inputinactive),
              value: _selectedValue,
              items: ['Miss', 'Mr', 'Mrs', 'Dr', 'Ing.', 'Prof']
                  .map((option) => DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsetsDirectional.symmetric(vertical: 15.0),
                    hintText: 'First Name',
                    hintStyle: TextStyle(color: AppColors.hinttext),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.inputinactive)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.green1)),
                    filled: true,
                    fillColor: AppColors.inputinactive)),
            SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsetsDirectional.symmetric(vertical: 15.0),
                    hintText: 'LastName',
                    hintStyle: TextStyle(color: AppColors.hinttext),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.inputinactive)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.green1)),
                    filled: true,
                    fillColor: AppColors.inputinactive)),
            SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email_rounded),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsetsDirectional.symmetric(vertical: 15.0),
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: AppColors.hinttext),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.inputinactive)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.green1)),
                    filled: true,
                    fillColor: AppColors.inputinactive)),
            SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone_android_rounded),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsetsDirectional.symmetric(vertical: 15.0),
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: AppColors.hinttext),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.inputinactive)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.green1)),
                    filled: true,
                    fillColor: AppColors.inputinactive)),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                    color: AppColors.green1,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => const Booking3());
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
