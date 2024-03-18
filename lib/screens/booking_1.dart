import 'package:cart_stepper/cart_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:trial2/colors.dart';
import 'package:trial2/screens/booking2.dart';

class Booking1 extends StatefulWidget {
  const Booking1({super.key});

  @override
  State<Booking1> createState() => _Booking1State();
}

class _Booking1State extends State<Booking1> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  //variables to store start and end date
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  TextEditingController _textFieldinController = TextEditingController();
  TextEditingController _textFieldoutController = TextEditingController();
  int _counter = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDay = _focusedDay;
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;

      _checkinTextField();
      _checkoutTextField();
    });
  }

  void _checkinTextField() {
    if (_rangeStart != null) {
      _textFieldinController.text = '${_rangeStart!.toString()} ';
    } else {
      _textFieldinController.clear();
    }
  }

  void _checkoutTextField() {
    if (_rangeEnd != null) {
      _textFieldoutController.text = '${_rangeEnd!.toString()} ';
    } else {
      _textFieldoutController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TableCalendar(
          focusedDay: _focusedDay,
          firstDay: DateTime.utc(2010, 3, 14),
          lastDay: DateTime.utc(2030, 3, 14),
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          calendarFormat: _calendarFormat,
          startingDayOfWeek: StartingDayOfWeek.monday,
          onDaySelected: _onDaySelected,
          rangeStartDay: _rangeStart,
          rangeSelectionMode: RangeSelectionMode.toggledOn,
          onRangeSelected: _onRangeSelected,
          rangeEndDay: _rangeEnd,
          calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              selectedDecoration: BoxDecoration(color: AppColors.green1)),
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: ((focusedDay) {
            _focusedDay = focusedDay;
          }),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(children: [
              Text(
                'Check in',
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 150,
                child: TextField(
                    controller: _textFieldinController,
                    readOnly: true,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.calendar_month),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsetsDirectional.symmetric(vertical: 15.0),
                        hintText: 'LastName',
                        hintStyle: TextStyle(color: AppColors.hinttext),
                        filled: true,
                        fillColor: AppColors.inputinactive)),
              ),
            ]),
            Icon(Icons.forward),
            Column(
              children: [
                Text(
                  'Check out',
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 150,
                  child: TextField(
                      controller: _textFieldoutController,
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.calendar_month),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsetsDirectional.symmetric(vertical: 15.0),
                        hintText: 'LastName',
                        hintStyle: TextStyle(color: AppColors.hinttext),
                      )),
                ),
              ],
            ),
          ]),
        ),
        CartStepperInt(
          value: _counter,
          style: CartStepperStyle.fromTheme(Theme.of(context),
              radius: const Radius.circular(5)),
          didChangeCount: (count) {
            setState(() {
              _counter = count;
            });
          },
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
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
                      context: context, builder: (context) => const Booking2());
                },
              )),
        )
      ],
    ));
  }
}
