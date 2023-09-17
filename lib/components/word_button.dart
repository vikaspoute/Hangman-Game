import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/constants.dart';

class WordButton extends StatelessWidget {
  const WordButton({
    required this.buttonTitle,
    required this.onPress,
  });

  final void Function()? onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(4.0),
        primary: kWordButtonColor,
      ),
      child: Text(
        buttonTitle,
        textAlign: TextAlign.center,
        style: kWordButtonTextStyle,
      ),
    );
  }
}
