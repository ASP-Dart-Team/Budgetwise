import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    super.key,
    required this.constraints,
    required this.amount,
  });

  final dynamic constraints;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: constraints,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            colors: [
              Color(0xFF8E44AD), // Dark Purple
              Color.fromARGB(255, 167, 113, 189), // Medium Purple
              Color.fromARGB(255, 193, 164, 206), // Light Purple
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      const Positioned(
        left: 35,
        top: 15,
        child: Text(
          'Available Balance',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      const Positioned(
        top: 30,
        left: 25,
        bottom: 50,
        child: Icon(
          Icons.attach_money,
          color: Colors.white,
          size: 40,
        ),
      ),
      Positioned(
        top: 35,
        left: 55,
        bottom: 50,
        child: Text(
          amount,
          style: const TextStyle(
              fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      Positioned(
        right: 20,
        bottom: 15,
        child: Text(
          'Budgetwise',
          style: TextStyle(
              fontSize: 22,
              color: Colors.white.withOpacity(0.4),
              fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }
}
