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
      width:400,
      height:100,
        decoration: BoxDecoration(
            color:Colors.red,
            border: Border.all(color: Colors.black, width:8)
        ),
      child:IconButton(
        icon:Text("Fill out new ${plan.name}",style: TextStyle(color: Colors.white60, fontSize: 25)),
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
