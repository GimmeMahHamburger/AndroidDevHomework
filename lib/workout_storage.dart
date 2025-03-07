import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'data_structures.dart';
import 'fake_firebase.dart';
import 'isar_structures.dart';
import 'package:firebase_database/firebase_database.dart';

class WorkoutStorage with ChangeNotifier{
  late Isar? db;
  late Isar? fb;
  FirebaseFirestore? _firebase;
  bool collab=false;
  bool useFB=false;
  String? currentName;


  static Future<WorkoutStorage> create() async{

    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [IWorkoutSchema],
      directory:dir.path
    );
    final fakeFB = await Isar.open(
      [FWorkoutSchema],
      directory:dir.path
    );
    WorkoutStorage output=WorkoutStorage._create(isar, fakeFB);
    output._firebase=FirebaseFirestore.instance;
    return output;
  }
  void addWorkout(Workout newWorkout) async{
    if(!useFB) {
      db!.writeTxnSync(() {
        db!.iWorkouts.putSync(toIWorkout(newWorkout));
      });
    } else {
      fb!.writeTxnSync((){
        fb!.fWorkouts.putSync(toFWorkout(newWorkout, currentName!));
      });
    }



    notifyListeners();
  }

  List<Workout> get getWorkouts{
    List<Workout> out = List<Workout>.empty(growable:true);
    for(IWorkout w in db!.iWorkouts.where().findAllSync()){
      out.add(toWorkout(w));
    }
    return out;
  }
  WorkoutStorage._create(Isar input,Isar fbInput){
    db=input;
    fb=fbInput;
  }
  void forceUseFB(){
    useFB=true;
  }
  void forceUseIsar(){
    useFB=false;
  }
  void forceCollab(){
    collab=true;
  }
  void forceCoop(){
    collab=false;
  }
}