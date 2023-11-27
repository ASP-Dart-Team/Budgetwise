import 'package:flutter/material.dart';

class TButton extends StatelessWidget {
  const TButton(
      {super.key,
      this.loading = false,
      required this.constraints,
      required this.btnColor,
      required this.btnText,
      required this.onPressed});

  final BoxConstraints constraints;
  final Color btnColor;
  final String btnText;
  final Function() onPressed;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 155, 67, 170),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: const Color.fromARGB(255, 175, 127, 184),
          width: 2,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: loading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Text(
                btnText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}
