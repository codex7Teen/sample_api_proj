// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:sample_api/api.dart';

class ScreenHome extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onToggleDarkMode;

   ScreenHome({required this.isDarkMode, required this.onToggleDarkMode});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  String _resultText = 'Result will be displayed here';

  final numberInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Post a value and get data using API'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {
                widget.onToggleDarkMode();
              }, icon: Icon(Icons.light_mode_outlined, size: 30,)),
              SizedBox(height: 20,),              TextField(
                controller: numberInputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter a number'),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () async {
                    final number = numberInputController.text;
                    final result = await getNumberFact(number: number);

                    setState(() {
                      _resultText = result.text ?? 'No text found';
                    });
                  },
                  child: Text('Click to submit and get data')),
              SizedBox(height: 15),
              Text(_resultText)
            ],
          ),
        ));
  }
}
