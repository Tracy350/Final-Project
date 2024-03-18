import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/confirmation_box.dart';

class FillIn extends StatefulWidget {
  const FillIn({super.key});

  @override
  State<FillIn> createState() => _FillInState();
}

class _FillInState extends State<FillIn> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back, size: 20)),
          title: Text(
            'Fill Your Profile',
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.w600)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(Icons.edit,
                              color: AppColors.green1, size: 20),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(vertical: 15.0),
                      hintText: 'LastName',
                      hintStyle: TextStyle(color: AppColors.hinttext),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.inputinactive)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.green1)),
                      filled: true,
                      fillColor: AppColors.inputinactive)),
              SizedBox(height: 15),
              const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(vertical: 15.0),
                      hintText: 'FullName',
                      hintStyle: TextStyle(color: AppColors.hinttext),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.inputinactive)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.green1)),
                      filled: true,
                      fillColor: AppColors.inputinactive)),
              SizedBox(
                height: 15,
              ),
              const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(vertical: 15.0),
                      hintText: 'Date of Birth',
                      hintStyle: TextStyle(color: AppColors.hinttext),
                      suffixIcon: Icon(
                        Icons.calendar_today,
                        color: AppColors.hinttext,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.inputinactive)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.green1)),
                      filled: true,
                      fillColor: AppColors.inputinactive)),
              SizedBox(
                height: 15,
              ),
              const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(vertical: 15.0),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: AppColors.hinttext),
                      suffixIcon: Icon(
                        Icons.email,
                        color: AppColors.hinttext,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.inputinactive)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.green1)),
                      filled: true,
                      fillColor: AppColors.inputinactive)),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsetsDirectional.symmetric(vertical: 15.0),
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(color: AppColors.hinttext),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.inputinactive)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.green1)),
                      filled: true,
                      fillColor: AppColors.inputinactive)),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsetsDirectional.symmetric(vertical: 15.0),
                        hintText: 'Gender',
                        hintStyle: TextStyle(color: AppColors.hinttext),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.inputinactive)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.green1)),
                        filled: true,
                        fillColor: AppColors.inputinactive),
                    value: _selectedValue,
                    items: ['Male', 'Female']
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
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                          builder: (context) => const ConfirmationBox());
                    },
                  ))
            ],
          ),
        ));
  }
}
