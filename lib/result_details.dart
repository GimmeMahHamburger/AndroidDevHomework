import 'package:flutter/material.dart';
import 'data_structures.dart';
class ResultDetails extends StatelessWidget {
  final Result result;
  const ResultDetails({super.key, required this.result});


  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(result.exercise.name),
      children:[
        Text("Exercise target: ${result.exercise.target} ${result.exercise.measure.name}"),
        Text("And you completed ${result.percent*100} percent of it",style: TextStyle(color: (result.percent>=1.0?Colors.green:Colors.blue)))
      ],
    );
  }
}