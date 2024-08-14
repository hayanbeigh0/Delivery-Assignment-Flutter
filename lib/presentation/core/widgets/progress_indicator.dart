import 'package:flutter/material.dart';

void showProgressIndicator(BuildContext context) {
  showDialog(
    barrierColor: Colors.black.withOpacity(0.2),
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return Center(
        child: Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(
              horizontal: 80,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      );
    },
  );
}
