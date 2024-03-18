import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/screens/booking_1.dart';
import 'package:trial2/screens/more_photos.dart';
import 'package:trial2/screens/more_reviews.dart';
import 'package:trial2/widgets/hotel_details/reviews_card.dart';

class HotelDetail extends StatelessWidget {
  final List<String> listImages = [
    ('assets/Hotel Details/hotelroom5.jpg'),
    ('assets/Hotel Details/hotelroom2.jpg'),
    ('assets/Hotel Details/hotelroom3.jpg'),
    ('assets/Hotel Details/hotelroom4.jpg'),
  ];
  HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselImages(
              scaleFactor: 1.0,
              listImages: listImages,
              height: MediaQuery.of(context).size.width,
              borderRadius: 20,
              verticalAlignment: Alignment.topCenter,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Royal President Hotel',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(Icons.location_city, color: AppColors.green1),
                  SizedBox(
                    width: 10,
                  ),
                  Text('79 Palace de la Madeleine, Makola, Accra, Ghana')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                    'Gallery Photos',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MorePhotos()));
                      },
                      child: Text(
                        'See All',
                        style: GoogleFonts.montserrat(
                            color: AppColors.green1,
                            fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            'assets/Hotel Details/hotelroom3.jpg',
                            height: 130,
                            width: 200,
                            fit: BoxFit.cover)),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            'assets/Hotel Details/hotelroom4.jpg',
                            height: 130,
                            width: 200,
                            fit: BoxFit.cover)),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            'assets/Hotel Details/hotelroom5.jpg',
                            height: 130,
                            width: 200,
                            fit: BoxFit.cover)),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            'assets/Hotel Details/hotelroom1.jpg',
                            height: 130,
                            width: 200,
                            fit: BoxFit.cover)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Details',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/Hotel Details/building_icon.png'),
                        Text('Hotels',
                            style: GoogleFonts.montserrat(fontSize: 12))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/Hotel Details/bed.png'),
                        Text('4 Bedrooms',
                            style: GoogleFonts.montserrat(fontSize: 12))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/Hotel Details/bathroom.png'),
                        Text('2 bathrooms',
                            style: GoogleFonts.montserrat(fontSize: 12))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/Hotel Details/space.png'),
                        Text('4000 sqft',
                            style: GoogleFonts.montserrat(fontSize: 12))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700, fontSize: 18)),
                  SizedBox(
                    height: 15,
                  ),
                  Text.rich(TextSpan(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet diam id dolor ultrices, ut tristique mi condimentum. Nullam malesuada lorem at velit venenatis, non suscipit justo commodo. Proin id mauris nisi.',
                      style: GoogleFonts.montserrat(),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Read more...',
                            style: GoogleFonts.montserrat(
                                color: AppColors.green1,
                                fontWeight: FontWeight.w600))
                      ])),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Facilities',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700, fontSize: 18)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(children: [
                          Image.asset('assets/Hotel Details/pool.png'),
                          Text(
                            'Swimming Pool',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(children: [
                          Image.asset('assets/Hotel Details/wifi.png'),
                          Text(
                            'WiFi',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(children: [
                          Image.asset('assets/Hotel Details/restaurant.png'),
                          Text(
                            'Restaurant',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(children: [
                          Image.asset('assets/Hotel Details/parking.png'),
                          Text(
                            'Parking',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          )
                        ]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(children: [
                          Image.asset('assets/Hotel Details/conference.png'),
                          Text(
                            'Meeting Room',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(children: [
                          Image.asset('assets/Hotel Details/elevator.png'),
                          Text(
                            'Elevator',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(children: [
                          Image.asset('assets/Hotel Details/gym.png'),
                          Text(
                            'Fitness Center',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(children: [
                          Image.asset('assets/Hotel Details/24hours.png'),
                          Text(
                            'Open 24/7',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          )
                        ]),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700, fontSize: 18)),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset('assets/Hotel Details/map.png')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
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
                          color: AppColors.green1,
                          fontWeight: FontWeight.w600)),
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
                            color: AppColors.green1,
                            fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 20, right: 20),
              child: Container(
                  height: 40,
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: MaterialButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'More',
                          style: TextStyle(color: AppColors.skiptext),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.skiptext,
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: AppColors.lightgreen1,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MoreReviews()));
                    },
                  )),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(TextSpan(
                    text: '\$29',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: AppColors.green1,
                        fontSize: 40),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' / night',
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.black45))
                    ])),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: MaterialButton(
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: AppColors.green1,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking1()));
                        }),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
