import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/model/top_rated_model.dart';
import 'package:trial2/screens/hotel_details.dart';

class TopRatedTile extends StatelessWidget {
  final Rating rating;

  const TopRatedTile({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HotelDetail()),
            );
          },
          child: Container(
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/toprated1.png',
                      height: 300, width: 230, fit: BoxFit.cover)),
              Container(
                height: 300,
                width: 230,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 140, top: 10),
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 13.0),
                          decoration: BoxDecoration(
                              color: AppColors.green1,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.white),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                rating.rating.toString(),
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 8, left: 8, right: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  rating.hotelname,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  rating.hotellocation,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Text.rich(TextSpan(
                                        text: rating.price,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: ' /per night',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 12))
                                        ])),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.bookmark_outline,
                                      color: Colors.white,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
