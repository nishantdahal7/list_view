import 'package:flutter/material.dart';
import 'package:list_view/view/cardview_view.dart';
import 'package:list_view/view/output_view.dart';
import 'package:list_view/view/student_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Details',
      initialRoute: '/',
      routes: {
        '/': (context) => const StudentView(), //student view
        '/outputRoute': (context) => const OutputView(),
        '/cardroute': (context) => const CardView(),
      },
    ),
  );
}
