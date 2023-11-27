import 'package:flutter/material.dart';

import '../../budgeto_themes.dart';
import '../../colors.dart';

class CardAlt extends StatelessWidget {
  const CardAlt({
    super.key,
    required this.orientation,
    required this.constraints,
    required this.title,
    required this.iconName,
    required this.verHeight,
    required this.verWidth,
    required this.horiHeight,
    required this.horiWidth,
  });

  final Orientation orientation;
  final BoxConstraints constraints;
  final String title;
  final IconData iconName;
  final dynamic verHeight;
  final dynamic verWidth;
  final dynamic horiHeight;
  final dynamic horiWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: orientation == Orientation.portrait ? verHeight : horiHeight,
      width: orientation == Orientation.portrait ? verWidth : horiWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.01,
            ),
            Icon(
              iconName,
              size: 45,
              color: BudgetoThemes.isDarkMode(context)
                  ? Colors.white
                  : kFontBlackC,
            ),
          ],
        ),
      ),
    );
  }
}
