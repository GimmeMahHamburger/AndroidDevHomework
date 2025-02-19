import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'construction_communication_storage.dart';
import 'data_structures.dart';
import 'workout_plan_storage.dart';
import 'workout_recording_page.dart';

class WorkoutListSelector extends StatelessWidget {
  const WorkoutListSelector({super.key});

  List<Widget> getWorkoutPlanWidget(List<WorkoutPlan> theList){
    List<Widget> output=List<Widget>.empty(growable:true);
    for(int i=0;i<theList.length;i++){
      output.add(_PlanSelectorButton(plan: theList[i]));
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:Column(
        children: [
          ...getWorkoutPlanWidget(context.read<WorkoutPlanStorage>().workoutPlans)
        ]

      )
    );
  }
}

class _PlanSelectorButton extends StatelessWidget {
  final WorkoutPlan plan;
  const _PlanSelectorButton({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:100,
      height:100,
      color:Colors.red,
      child:IconButton(
        icon:Text("${plan.name} is da naem",style: TextStyle(color: Colors.white60, fontSize: 30)),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Provider(
                create: (context) => ConstructionCommunicationStorage(),
                child: WorkoutRecordingPage(plan: tempPlan)
              )
            ),
          );
        }
      )
    );
  }
}
