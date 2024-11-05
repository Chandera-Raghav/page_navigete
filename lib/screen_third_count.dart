import 'package:flutter/material.dart';

class ScreenThirdCount extends StatefulWidget{
  int value;
  String name;
  ScreenThirdCount({required this.value, required this.name});
  @override
  State<ScreenThirdCount> createState() => _ScreenThirdCountState();
}
class _ScreenThirdCountState extends State<ScreenThirdCount>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Page Third Count"),
      ),
      body: Center(
        child: Row(
          children: [
            Text("${widget.value}. ", style: const TextStyle(fontSize: 40),),
            Text(widget.name, style: const TextStyle(fontSize: 40),)
          ],
        ),
      ),
    );
  }
  
}