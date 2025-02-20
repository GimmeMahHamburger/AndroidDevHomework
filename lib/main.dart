import 'package:flutter/material.dart';
import 'package:homework_1/workout_storage.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'workout_plan_storage.dart';
void main() {
  runApp(WorkoutHistoryPage());
}

class WorkoutHistoryPage extends StatelessWidget {
  WorkoutHistoryPage({super.key});
  Future<WorkoutStorage> temp=WorkoutStorage.create();

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<WorkoutStorage>(
      future:temp,
      builder: (context, snapshot) {
        return ChangeNotifierProvider(
          create: (context) => snapshot.data,
          child:ChangeNotifierProvider(
            create: (context) => WorkoutPlanStorage(),
            child:MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
                useMaterial3: true,
              ),
              home:HomePage()
            )
          )
        );
      }
    );
  }
}




