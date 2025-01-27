import 'package:flutter/material.dart';
import 'package:homework_1/workout_recording_single.dart';
import 'data_structures.dart';
import 'workout_details.dart';

void main() {
  runApp(WorkoutHistoryPage());
}

class WorkoutHistoryPage extends StatelessWidget {
  const WorkoutHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: WorkoutRecordingSingle(ex: DUMMYEXERCISE),
      //home: WorkoutDetails(workout: tempData),
    );
  }
}




