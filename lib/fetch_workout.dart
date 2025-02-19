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
      body:Form(
        key:_formKey,
        child:Column(
          children:[
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                return null;
              },
            ),
          ]
        )
      )
    );
  }
}

