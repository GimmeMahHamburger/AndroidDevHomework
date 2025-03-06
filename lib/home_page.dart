import 'package:flutter/material.dart';
import 'package:homework_1/fetch_workout.dart';
import 'package:homework_1/workout_type_selector.dart';
import 'package:provider/provider.dart';

import 'floating_summary.dart';
import 'workout_list_display.dart';
import 'workout_list_selector.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:SafeArea(
        child:Column(
          children:[
            IconButton(icon: const Text("Look at Past Workouts"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => WorkoutListDisplay()
                  )
                );
              }
            ),
            IconButton(icon: const Text("Fill out new Workout"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => WorkoutTypeSelector()
                  )
                );
              }
            ),
            IconButton(icon: const Text("Download new Workout List"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => FetchWorkout()
                  )
                );
              }
            ),
            FloatingSummary(),
          ]
        )
      )
    );
  }
}
