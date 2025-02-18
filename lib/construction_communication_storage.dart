import 'data_structures.dart';

class ConstructionCommunicationStorage{
  List<Result> storage = List<Result>.empty(growable:true);
  void AddResult(Result input){
    storage.add(input);
  }
  void WipeStorage(){
    storage=List<Result>.empty(growable:true);
  }
  Workout createWorkout(DateTime date){
    return Workout(date,List<Result>.from(storage));
  }
}