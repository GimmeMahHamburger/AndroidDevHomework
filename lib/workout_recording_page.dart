import 'package:flutter/material.dart';
import 'data_structures.dart';
import 'workout_recording_single.dart';

class WorkoutRecordingPage extends StatelessWidget {
  WorkoutRecordingPage({super.key});
  final line1=TextEditingController();
  final line2=TextEditingController();
  final line3=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Column(
          children:[
            WorkoutRecordingSingle(ex:DUMMYEXERCISE,output:line1),
            WorkoutRecordingSingle(ex:DUMMYEXERCISE,output:line2),
            WorkoutRecordingSingle(ex:DUMMYEXERCISE,output:line3),
          ]
        )
      )
    );
  }
}
