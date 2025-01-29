import 'package:flutter/material.dart';
import 'package:homework_1/workout_storage.dart';
import 'package:provider/provider.dart';
//import 'package:homework_1/workout_recording_single.dart';
import 'data_structures.dart';
import 'workout_details.dart';
import 'workout_list_display.dart';
import 'workout_recording_page.dart';

void main() {
  runApp(WorkoutHistoryPage());
}

class WorkoutHistoryPage extends StatelessWidget {
  const WorkoutHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (context) => WorkoutStorage(),
      child:MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        home:WorkoutListDisplay()
    )
    );
  }
}




