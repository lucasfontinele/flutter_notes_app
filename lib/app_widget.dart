import 'package:flutter/material.dart';
import 'package:notes_app/create_note_page.dart';
import 'package:notes_app/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        "/create-note": (context) => const CreateNotePage(),
      },
    );
  }
}
