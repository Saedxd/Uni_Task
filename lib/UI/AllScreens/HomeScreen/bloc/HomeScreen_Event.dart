library HomeScreen_Event;

import 'package:built_value/built_value.dart';
import 'package:review_info/Core/Classes/Classes.dart';


part 'HomeScreen_Event.g.dart';

abstract class HomeScreenEvent {}


abstract class ShowListNotes extends HomeScreenEvent
    implements Built<ShowListNotes,ShowListNotesBuilder> {

 List<Note>? get Notes;
 List<Note>? get Filtered_Notes;

 ShowListNotes._();
  factory ShowListNotes([updates(ShowListNotesBuilder b)]) = _$ShowListNotes;
}

abstract class SelectNote extends HomeScreenEvent
    implements  Built<SelectNote,SelectNoteBuilder> {
  int? get Index;
  SelectNote._();
  factory SelectNote([updates(SelectNoteBuilder b)]) = _$SelectNote;
}


abstract class DeleteNote extends HomeScreenEvent
    implements  Built<DeleteNote,DeleteNoteBuilder> {
  int? get Index;
  DeleteNote._();
  factory DeleteNote([updates(DeleteNoteBuilder b)]) = _$DeleteNote;
}

abstract class SearchNotes extends HomeScreenEvent
    implements Built<SearchNotes, SearchNotesBuilder> {
  SearchNotes._();
  String?  get KeyWord;
  factory SearchNotes([updates(SearchNotesBuilder b)]) = _$SearchNotes;
}

abstract class ClearNoteSelection extends HomeScreenEvent
    implements Built<ClearNoteSelection, ClearNoteSelectionBuilder> {
  ClearNoteSelection._();
int? get Index;
  factory ClearNoteSelection([updates(ClearNoteSelectionBuilder b)]) = _$ClearNoteSelection;
}



// abstract class DeleteNote extends HomeScreenEvent
//     implements  Built<DeleteNote,DeleteNoteBuilder> {
//
//   DeleteNote._();
//   factory DeleteNote([updates(DeleteNoteBuilder b)]) = _$DeleteNote;
// }
//
// abstract class SearchNotes extends HomeScreenEvent
//     implements Built<SearchNotes, SearchNotesBuilder> {
//   SearchNotes._();
//   String?  get fcmToken;
//   String? get AccessToken;
//   factory SearchNotes([updates(SearchNotesBuilder b)]) = _$SearchNotes;
// }

//
// abstract class SigninWithGoogle extends HomeScreenEvent
//     implements Built<SigninWithGoogle, SigninWithGoogleBuilder> {
//   String? get Email;
//   String? get Name;
//   String? get image;
//   String?  get fcmToken;
//   SigninWithGoogle._();
//   factory SigninWithGoogle([Function(SigninWithGoogleBuilder b) updates]) = _$SigninWithGoogle;
// }
//
