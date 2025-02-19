import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'data_structures.dart';
class FetchWorkout extends StatefulWidget {
  const FetchWorkout({super.key});

  @override
  State<FetchWorkout> createState() => _FetchWorkoutState();
}

class _FetchWorkoutState extends State<FetchWorkout> {
  final line=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Exercise parseExercise(Map<String, dynamic> json){
    return Exercise(
      json['name'],
      json['target'],
      json['unit']
    );
  }

  Future<WorkoutPlan> fetchWorkoutPlan(BuildContext context, String address) async {
    final response = await http.get(
      Uri.parse(address),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> tempJson=jsonDecode(response.body) as Map<String, dynamic>;
      WorkoutPlan output = WorkoutPlan(
        tempJson['name'],
        tempJson['exercises'].map((entry) => parseExercise(entry))
      );
      return output;
    } else {
      throw Exception('Resource not found.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:Form(
        key:_formKey,
        child:Column(
          children:[
            Container(
            width:400,
            height:100,
            decoration: BoxDecoration(
              color:Colors.red,
              border: Border.all(color: Colors.black, width:8)
            ),
              child:Text("Gimme a URL (plz)",style:TextStyle(fontSize:40,))
            ),
            TextFormField(
              decoration:InputDecoration(labelText:"Enter here"),
              controller:line,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                return null;
              },
            ),
            IconButton(
              icon:Text("FETCH",style:TextStyle(fontSize:100)),
              onPressed:(){
                if(_formKey.currentState!.validate()){
                  print(fetchWorkoutPlan(context, line.text));
                }else{
                  print("ay thats not valid, yo");
                }
              }
            )
          ]
        )
      )
    );
  }
}

