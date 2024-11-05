import 'package:flutter/material.dart';
import 'package:page_navigete/screen_second.dart';
import 'package:page_navigete/screen_second_count.dart';

class ScreenOne extends StatefulWidget{
  const ScreenOne({super.key});
  @override
  State<ScreenOne> createState() => _ScreenOneState();
}
class _ScreenOneState extends State<ScreenOne> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SecondScreen()));
            }, child: const Text("Next Page...")),
            Text(count.toString(), style: const TextStyle(fontSize: 40),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          count++;
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ScreenSecondCount(count: count)));
        });
      }, child: const Icon(Icons.add),),
    );
  }
}