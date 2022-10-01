import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CyclingPage extends StatelessWidget {
  const CyclingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cycling'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.orange, width: 5)
          ),
          child: Icon(Icons.pedal_bike_outlined,size: 150,),
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}