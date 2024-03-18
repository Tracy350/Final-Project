import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/screens/homepage.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

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
          iconSize: 30,
        ),
        title: Text(
          'Recently Booked',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontWeight: FontWeight.w600)),
        ),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
              mainAxisExtent: 150),
          itemBuilder: (_, index) {
            return Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
              color: Colors.black,child: Column(
                children: [
                  
                ],
              ),
            );
          }),
    );
  }
}
