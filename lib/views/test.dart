import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  /// DUMMY DATA LIST
  List<String> fruitOptions = ['apple', 'orange', 'carrot', 'Mango'];

  /// THE SELECTED VA;UE WILL BE STORED IN THIS VARIABLE
  String? selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: selectedFruit,
          items: fruitOptions
              .map(
                (e) => DropdownMenuItem<String>(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedFruit = value;
            });
          },
        ),
      ),
    );
  }
}
