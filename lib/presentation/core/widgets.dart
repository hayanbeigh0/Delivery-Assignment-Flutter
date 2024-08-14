import 'package:flutter/material.dart';

AppBar defaultAppBar({
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    title: Text(
      title,
      style: Theme.of(context).textTheme.displaySmall,
    ),
  );
}
