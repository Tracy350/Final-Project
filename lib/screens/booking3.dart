import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/screens/booking2.dart';

class Booking3 extends StatefulWidget {
  const Booking3({super.key});

  @override
  State<Booking3> createState() => _Booking3State();
}

class _Booking3State extends State<Booking3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Booking2()),
            );
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 20,
        ),
        title: Text(
          'Payment',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontWeight: FontWeight.w700)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Payment Methods',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add New Card',
                      style: GoogleFonts.montserrat(
                          color: AppColors.green1, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
            RadioListTile(
              value: 1,
              groupValue: 1,
              title: Row(
                children: [
                  Image.asset('assets/Hotel Details/PaymentPage/google.png'),
                  Text(
                    'Paypal',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              onChanged: (val) {},
              activeColor: AppColors.green1,
            )
          ],
        ),
      ),
    );
  }
}
