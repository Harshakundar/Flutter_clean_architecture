import 'package:flutter/material.dart';
import 'package:youtube_bloc_cleaning_coding/config/color/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final double height;
  const RoundButton({super.key,required this.title, this.height=40, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        decoration: BoxDecoration(color: AppColors.buttonColor,borderRadius: BorderRadius.circular(10)),
        
        child: Center(
          child:  Text(title),
        ),
      ),
    );
  }
}