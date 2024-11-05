import 'package:flutter/material.dart';
import 'package:page_navigete/screen_third_count.dart';
class ScreenSecondCount extends StatefulWidget {

  int count;
  ScreenSecondCount({required this.count});
  @override
  State<ScreenSecondCount> createState() => _SecondPage();
 }
class _SecondPage extends State<ScreenSecondCount> {
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text("Second Page"),
        centerTitle: true,

      ),
      body: Center(child: Text(widget.count.toString(), style: const TextStyle(fontSize: 40),)),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          name = "Raghav Chandera";
        });
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ScreenThirdCount(value: widget.count, name: name.toString())));
      }, child: const Icon(Icons.add)),
    );
  }
}
