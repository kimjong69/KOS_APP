import 'package:flutter/material.dart';

import 'constants.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: buttonTheme,
    ),
  );
}
