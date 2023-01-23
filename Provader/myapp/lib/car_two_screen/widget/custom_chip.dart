import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onSelected,
    // required this.currentIndex,
  }) : super(key: key);
  final String title;
  final bool isSelected;
  final Function(bool) onSelected;

  // final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      onSelected:onSelected,
      side: BorderSide(width: 1, color: AppColors.darkblue),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      selectedColor: AppColors.greyblue,
      backgroundColor: AppColors.white,
      disabledColor: AppColors.white,
      label: Text(
        // 'family cars'
        title,
        style: AppFonts.w700s12,
      ),
      selected: isSelected
    );
  }
}
