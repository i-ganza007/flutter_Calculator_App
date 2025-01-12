import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: OuterContainer(),
  ));
}

class OuterContainer extends StatelessWidget {
  const OuterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [InputBar(), Keypad()],
      ),
    );
  }
}

class InputBar extends StatefulWidget {
  const InputBar({super.key});

  @override
  State<InputBar> createState() => _InputBarState();
}

class _InputBarState extends State<InputBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(16.0),
      child:const CupertinoTextField(
        placeholder: 'Input goes here',
      ),
    );
  }
}

class Keypad extends StatelessWidget {
  const Keypad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        shrinkWrap: true, // Ensures the grid takes only the required space
        crossAxisCount: 4, // 4 columns in the grid
        children: const [
          KeyButton(buttonContent: 'C', buttonColor: Colors.amber),
          KeyButton(buttonContent: '-/+', buttonColor: Colors.amber),
          KeyButton(buttonContent: '%', buttonColor: Colors.amber),
          KeyButton(buttonContent: '/', buttonColor: Colors.amber),
          KeyButton(buttonContent: '7', buttonColor: Colors.black87),
          KeyButton(buttonContent: '8', buttonColor: Colors.black87),
          KeyButton(buttonContent: '9', buttonColor: Colors.black87),
          KeyButton(buttonContent: '4', buttonColor: Colors.black87),
          KeyButton(buttonContent: '5', buttonColor: Colors.black87),
          KeyButton(buttonContent: '6', buttonColor: Colors.black87),
          KeyButton(buttonContent: '1', buttonColor: Colors.black87),
          KeyButton(buttonContent: '2', buttonColor: Colors.black87),
          KeyButton(buttonContent: '3', buttonColor: Colors.black87),
          KeyButton(buttonContent: '+', buttonColor: Colors.amber),
          KeyButton(buttonContent: '0', buttonColor: Colors.black87),
          KeyButton(buttonContent: '.', buttonColor: Colors.amber),
          KeyButton(buttonContent: '=', buttonColor: Colors.amber)
        ],
      ),
    );
  }
}

class KeyButton extends StatelessWidget {
  final String buttonContent;
  final Color buttonColor; // Changed from String to Color
  const KeyButton({super.key, required this.buttonContent, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: buttonColor,
        foregroundColor: Colors.white,
        child: Center(
          child: Text(buttonContent),
        ),
      ),
    );
  }
}