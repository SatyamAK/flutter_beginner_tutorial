import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage>{
  int counter = 0;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(  
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(child:Text('Welcome')),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'You have pressed + button',
              style: TextStyle(  
                fontSize: 18
              ),
            )
          ),
          Center(
            child: Text(
              counter.toString(),
              style: TextStyle(  
                fontSize: 36
              ),
            )
          ),
        ]
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(  
            onPressed: (counter>0)?(){
              setState(() {
                counter--;
              });
              print(counter);
            }:null,
            backgroundColor: Colors.deepPurpleAccent,
            child: Icon(Icons.exposure_minus_1)
          ),
          SizedBox(width:8),
          FloatingActionButton(  
            onPressed: (){
              setState(() {
                counter++;
              });
              print(counter);
            },
            backgroundColor: Colors.deepPurpleAccent,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}