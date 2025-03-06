import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseAccessor with ChangeNotifier{
  final FirebaseFirestore _firebase;
  FirebaseAccessor({FirebaseFirestore? firebase}) :
    _firebase = firebase ?? FirebaseFirestore.instance;


}