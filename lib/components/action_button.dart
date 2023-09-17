import 'package:flutter/material.dart';
import 'package:flutter_hangman/utilities/constants.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.buttonTitle,
    required this.onPress,
  });

  final void Function() onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        elevation: 3.0,
        primary: kActionButtonColor,
        onPrimary: kActionButtonHighlightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        buttonTitle,
        style: kActionButtonTextStyle,
      ),
    );
  }
}
