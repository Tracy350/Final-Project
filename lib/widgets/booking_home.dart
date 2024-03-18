import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';


class HomeBooking extends StatelessWidget {
  const HomeBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(left: 15.0, right: 10),
      child: Container(
        child: Row(

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/toprated2.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Presidential Hotel',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Paris, France',
                      style: GoogleFonts.montserrat(),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          '4.9',
                          style:
                              GoogleFonts.montserrat(color: AppColors.green1),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          '(4,748 reviews)',
                          style: GoogleFonts.montserrat(),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text(
                      '\$ 35',
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: AppColors.green1,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '/night',
                      style: GoogleFonts.montserrat(),
                    ),
                    Icon(Icons.bookmark, color: AppColors.green1)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
