import 'package:flutter/material.dart';
import 'package:homework_1/workout_list_selector.dart';
import 'package:provider/provider.dart';

import 'workout_storage.dart';

class CooperativeWorkoutSelector extends StatelessWidget {
  const CooperativeWorkoutSelector({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<WorkoutStorage>().forceUseFB();
    context.read<WorkoutStorage>().forceCoop();

    return WorkoutListSelector();
  }
}
