import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/screens/homepage.dart';
import 'package:trial2/widgets/booking_home.dart';

class AllBooking extends StatelessWidget {
  const AllBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          iconSize: 20,
        ),
        title: Text(
          'Recently Booked',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontWeight: FontWeight.w600)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Column(
            children: [
              HomeBooking(),
              SizedBox(height: 10,),
              HomeBooking(),
              SizedBox(height: 10,),
              HomeBooking(),
              SizedBox(height: 10,),
              HomeBooking(),
              SizedBox(height: 10,),
              HomeBooking(),
              SizedBox(height: 10,),
              HomeBooking(),
              SizedBox(height: 10,),
              HomeBooking(),
              SizedBox(height: 10,),
              HomeBooking()
            ],
          ),
        ),
      )
    );
  }
}
