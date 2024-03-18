import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:trial2/colors.dart';

class MoreReviewsChips extends StatefulWidget {
  const MoreReviewsChips({super.key});

  @override
  State<MoreReviewsChips> createState() => _MoreReviewsChips();
}

class _MoreReviewsChips extends State<MoreReviewsChips> {
  List<String> _choice = ['5.0', '4.0', '3.0', '2.0', '1.0'];

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
      runSpacing: 100,
    );
  }
}
