import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:trial2/colors.dart';

class TouristPages extends StatefulWidget {
  const TouristPages({super.key});

  @override
  State<TouristPages> createState() => _TouristPagesState();
}

class _TouristPagesState extends State<TouristPages> {
  List<String> _choice = [
    'Recommended',
    'Popular',
    'Trending',
    'For you',
    'sime'
  ];

  @override
  Widget build(BuildContext context) {
    return ChipList(
      listOfChipNames: _choice,
      activeBgColorList: [AppColors.green1],
      inactiveBgColorList: [Colors.white],
      activeTextColorList: [Colors.white],
      inactiveTextColorList: [AppColors.green1],
      activeBorderColorList: [AppColors.green1],
      inactiveBorderColorList: [AppColors.green1],
      listOfChipIndicesCurrentlySeclected: [0],
      showCheckmark: false,
    );
  }
}
