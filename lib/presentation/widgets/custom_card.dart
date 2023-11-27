import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.orientation,
      required this.verHeight,
      required this.horiHeight,
      required this.horiWidth,
      required this.verWidth,
      required this.cardTitle,
      required this.cardBalance});

  final Orientation orientation;
  final dynamic verHeight;
  final dynamic verWidth;
  final dynamic horiHeight;
  final dynamic horiWidth;
  final String cardTitle;
  final String cardBalance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: orientation == Orientation.portrait ? verHeight : horiHeight,
      width: orientation == Orientation.portrait ? verWidth : horiWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Add a subtle shadow
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cardTitle,
              style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600, // Adjust the font weight
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.attach_money,
                  size: 25,
                  color: Colors.green, // Adjust the icon color
                ),
                SizedBox(
                  height: 35,
                  child: Text(
                    cardBalance,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600, // Adjust the font weight
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
