import 'package:flutter/material.dart';
import 'package:homework_1/construction_communication_storage.dart';
import 'package:provider/provider.dart';

import 'data_structures.dart';
import 'floating_summary.dart';
import 'workout_details.dart';
import 'workout_recording_page.dart';
import 'workout_storage.dart';

class WorkoutListDisplay extends StatefulWidget {
  const WorkoutListDisplay({super.key});

  @override
  State<WorkoutListDisplay> createState() => _WorkoutListDisplayState();
}

class _WorkoutListDisplayState extends State<WorkoutListDisplay> {

  List<Widget> getWorkoutWidget(List<Workout> theList){
    List<Widget> output=List<Widget>.empty(growable:true);
    for(int i=0;i<theList.length;i++){
      output.add(WorkoutDetails(workout: theList[i]));
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:ListView(
          children:[
            Column(
              children:[

                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () async { //necessary to force a rebuild
                    int buffer = await Navigator.of(context).push( //only needs to update once new workouts are made
                      MaterialPageRoute( //its suspended anyways, i know this is an inelegant solution but i cant figure out the "right" way
                        builder: (context) => Provider( //idea from https://stackoverflow.com/questions/49804891/force-flutter-navigator-to-reload-state-when-popping
                            create: (context) => ConstructionCommunicationStorage(),
                            child:WorkoutRecordingPage(plan:tempPlan)
                        )
                      ),
                    );
                    setState(() {}); //just reset, force rebuild
                  },
                ),
                ...getWorkoutWidget(context.read<WorkoutStorage>().workouts),
              ]
            ),
            FloatingSummary(),
          ],

        )
      )
    );
  }
}


class WorkoutListDisplay2 extends StatelessWidget {
  //final List<Workout> workoutList;
  const WorkoutListDisplay2({super.key});

  List<Widget> getWorkoutWidget(List<Workout> theList){
    List<Widget> output=List<Widget>.empty(growable:true);
    for(int i=0;i<theList.length;i++){
      output.add(WorkoutDetails(workout: theList[i]));
    }
    return output;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Column(
          children:[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Provider(
                      create: (context) => ConstructionCommunicationStorage(),
                      child:WorkoutRecordingPage(plan:tempPlan)
                    )
                  ),
                );
              },
            ),
            ...getWorkoutWidget(context.read<WorkoutStorage>().workouts),
          ]
        )
      )
    );
  }
}
