import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/screens/homepage.dart';
import 'package:trial2/widgets/notification_page_widgets/booking_cancelled.dart';
import 'package:trial2/widgets/notification_page_widgets/payment_successful.dart';
import 'package:trial2/widgets/notification_page_widgets/2stepverificationn_successful.dart';
import 'package:trial2/widgets/notification_page_widgets/verification_successful.dart';
import 'package:trial2/widgets/notification_page_widgets/wallet_notification.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 20,
        ),
        title: Text(
          'Notification',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontWeight: FontWeight.w700)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            PaymentSuccessful(),
            SizedBox(
              height: 20,
            ),
            WalletNotification(),
            Text(
              'Yesterday',
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            BookingCancelled(),
            SizedBox(
              height: 20,
            ),
            StepVerificationSuccessful(),
            SizedBox(
              height: 20,
            ),
            Text(
              'December 11, 2024',
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            VerificationSuccessful()
          ],
        ),
      ),
    );
  }
}
