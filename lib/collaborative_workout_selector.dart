import 'package:flutter/material.dart';
import 'package:homework_1/workout_list_selector.dart';
import 'package:provider/provider.dart';

import 'workout_storage.dart';

class CollaborativeWorkoutSelector extends StatelessWidget {
  const CollaborativeWorkoutSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (context) => WorkoutStorage.createFB(isCollab:true),
        child: WorkoutListSelector()
    );
  }
}
