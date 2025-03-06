import 'package:flutter/material.dart';
import 'package:homework_1/collaborative_workout_selector.dart';
import 'package:homework_1/workout_list_selector.dart';

class WorkoutTypeSelector extends StatelessWidget {
  const WorkoutTypeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:SafeArea(
        child:Column(
          children:[
            IconButton(icon: const Text("Fill out new Workout List"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WorkoutListSelector()
                  )
                );
              }
            ),
            IconButton(icon: const Text("Fill out Collaborative Workout"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CollaborativeWorkoutSelector()
                  )
                );
              }
            ),
            IconButton(icon: const Text("Fill out Competitive Workout"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Placeholder()
                  )
                );
              }
            ),
            IconButton(icon: const Text("Join Workout"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Placeholder()
                  )
                );
              }
            ),


          ]
        )
      )
    );
  }
}
