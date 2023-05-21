import 'package:flutter/material.dart';
import 'package:list_view/common/snackbar_widget.dart';

Widget displayCard(String title, BuildContext context) {
  return GestureDetector(
    onTap: () {
      showSnackBar(context, 'title is clicked');
    },
    child: SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
