

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_structures.dart';
import 'workout_storage.dart';

class FloatingSummary extends StatefulWidget {
  const FloatingSummary({super.key});

  @override
  State<FloatingSummary> createState() => _FloatingSummaryState();
}

class _FloatingSummaryState extends State<FloatingSummary> {
  OverlayEntry? entry;

  @override
  void initState() {
    super.initState();
    //makeOverlay();
  }

  int calcFitness(List<Workout> input){
    int total=0;
    DateTime rightNow=DateTime.now();
    for(Workout work in input){
      if(rightNow.subtract(Duration(days:7)).compareTo(work.date)<0){
        total+=work.collection.length; //I'm pressed for time, okay
      } //simple is good?
    }
    return total;
  }

  void makeOverlay(){
    removeOverlay();
    entry=OverlayEntry(
      builder: (BuildContext context){
        return SafeArea(
          child:Align(
            alignment:AlignmentDirectional.bottomStart,
            child:ListenableBuilder(
              listenable: context.read<WorkoutStorage>(),
              builder: (BuildContext context, Widget? child) {
                final List<Workout> values = context.read<WorkoutStorage>().getWorkouts; // copy the list
              return Container(
                  width:230,
                  height:30,
                  color:Colors.blueAccent,
                child:Text("${calcFitness(values)} fitness score",style: TextStyle(color: Colors.black, fontSize: 20))
              );
              },
            )
          )

        );
      }
    );
    Overlay.of(context).insert(entry!);
  }


  // Remove the OverlayEntry.
  void removeOverlay() {
    entry?.remove();
    entry?.dispose();
    entry = null;
  }

  @override
  void dispose() {
    // Make sure to remove OverlayEntry when the widget is disposed.
    removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:AlignmentDirectional.bottomStart,
      child:Container(
        width:400,
        height:40,
        color:Colors.blueAccent,
        child:IconButton(
            icon: Text("Enable Annoying Overlay"),
            onPressed:(() {
              makeOverlay();
            })
        ),
      )

    );
  }

}

