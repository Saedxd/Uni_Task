library HomeScreen_State;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:review_info/Core/Classes/Classes.dart';




part 'HomeScreen_State.g.dart';

abstract class HomeScreenState implements Built<HomeScreenState, HomeScreenStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  int? get number;


  List<Note>? get Notes;
  List<Note>? get FilteredNotes;

  List<bool>? get Note_Selected;
  int? get Selected_Index;
  // UserDataModel? get data;

  HomeScreenState._();

  factory HomeScreenState([updates(HomeScreenStateBuilder b)]) = _$HomeScreenState;

  factory HomeScreenState.initail() {
    return HomeScreenState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = true
      ..number = 0
      ..Selected_Index = -1
        ..Notes = []
        ..FilteredNotes = []
        ..Note_Selected=  List.filled(10000000, false)




    );
  }
}
