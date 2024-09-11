// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:sample_api/api.dart';

class ScreenHome extends StatelessWidget {
   ScreenHome({super.key});

  String _resultText = 'result will be displayed here';

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
                 TextField(
                  controller: numberInputController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Enter a number'),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      final number = numberInputController.text;
                      getOutput(number: number);
                    }, child: Text('Click to submit and get data')),
                SizedBox(height: 15),
                Text(_resultText)
              ],
            ),
          ));
  }
}