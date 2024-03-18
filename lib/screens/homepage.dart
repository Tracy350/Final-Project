import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/model/top_rated_model.dart';
import 'package:trial2/screens/booking_list.dart';
import 'package:trial2/screens/bookmark.dart';
import 'package:trial2/tourist_places.dart';
import 'package:trial2/widgets/booking_home.dart';
import 'package:trial2/widgets/top_rated.dart';

import 'notification_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({superkey});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ratings = Rating.dataSample.toList();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/homelogo.png'),
                      ),
                      Text('Helia',
                          style: GoogleFonts.montserrat(
                              fontSize: 24, fontWeight: FontWeight.w600)),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationList()),
                          );
                        },
                        icon: Image.asset('assets/icons/Notification.png'),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bookmark()),
                          );
                        },
                        icon: Image.asset('assets/icons/Bookmark.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Hello, Daniel',
                    style: GoogleFonts.montserrat(
                        fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: AppColors.bordercolor,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: const Icon(Icons.filter_alt,
                            color: AppColors.green1),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.inputactive),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: TouristPages(),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      ratings.length,
                      (index) => TopRatedTile(rating: ratings[index]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Row(
                    children: [
                      Text(
                        'Recently Booked',
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllBooking()));
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
                const SizedBox(
                  height: 10,
                ),
                const HomeBooking(),
                const SizedBox(
                  height: 20,
                ),
                const HomeBooking(),
                SizedBox(
                  height: 20,
                ),
                HomeBooking(),
                SizedBox(
                  height: 20,
                ),
                HomeBooking(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedIconTheme: const IconThemeData(
              color: AppColors.green1), // Set the color for selected icons
          unselectedIconTheme: const IconThemeData(
              color: Colors.grey), // Set the color for unselected icons
        ),
      ),
    );
  }
}
