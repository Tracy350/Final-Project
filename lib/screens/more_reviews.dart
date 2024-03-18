import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/more_review_chips.dart';
import 'package:trial2/screens/hotel_details.dart';
import 'package:trial2/widgets/hotel_details/reviews_card.dart';

class MoreReviews extends StatelessWidget {
  const MoreReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HotelDetail()));
          },
          iconSize: 20,
        ),
        title: Text(
          'Reviews',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            MoreReviewsChips(),
            Row(
              children: [
                Text('Review',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700, fontSize: 18)),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text('4.8',
                    style: GoogleFonts.montserrat(
                        color: AppColors.green1, fontWeight: FontWeight.w600)),
                Text(
                  '(4,981 reviews)',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MoreReviews()));
                    },
                    child: Text(
                      'See All ',
                      style: GoogleFonts.montserrat(
                          color: AppColors.green1, fontWeight: FontWeight.w700),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ReviewsCard(),
            SizedBox(
              height: 20,
            ),
            ReviewsCard(),
            SizedBox(
              height: 20,
            ),
            ReviewsCard(),
            SizedBox(
              height: 20,
            ),
            ReviewsCard(),
            SizedBox(
              height: 20,
            ),
            ReviewsCard(),
            SizedBox(
              height: 20,
            ),
            ReviewsCard(),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
