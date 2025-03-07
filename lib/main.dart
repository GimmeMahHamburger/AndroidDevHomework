import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:homework_1/workout_storage.dart';
import 'package:provider/provider.dart';
import 'firebase_accessor.dart';
import 'home_page.dart';
import 'workout_plan_storage.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  try {
    final userCredential =
    await FirebaseAuth.instance.signInAnonymously();
    print("Signed in with temporary account.");
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        print("Anonymous auth hasn't been enabled for this project.");
        break;
      default:
        print("Unknown error.");
    }
  }



  runApp(WorkoutHistoryPage());
}

class WorkoutHistoryPage extends StatelessWidget {
  WorkoutHistoryPage({super.key});
  final Future<WorkoutStorage> temp=WorkoutStorage.create();

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<WorkoutStorage>(
      future:temp,
      builder: (context, snapshot) {
        return ChangeNotifierProvider(
          create: (context) => snapshot.data,
          child:ChangeNotifierProvider(
            create: (context) => WorkoutPlanStorage(),
            child:ChangeNotifierProvider(
              create: (context) => FirebaseAccessor(),
              child:MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
                  useMaterial3: true,
                ),
              home:HomePage()
              )
            )
          )
        );
      }
    );
  }
}




