import 'data_structures.dart';

class ConstructionCommunicationStorage{
  List<Result> storage = List<Result>.empty(growable:true);
  void AddResult(Result input){
    print("added a shit");
    storage.add(input);
  }
  void WipeStorage(){
    storage=List<Result>.empty(growable:true);
    print ("wiped a shit");
  }
  Workout createWorkout(DateTime date){
    return Workout(date,List<Result>.from(storage));
  }
}