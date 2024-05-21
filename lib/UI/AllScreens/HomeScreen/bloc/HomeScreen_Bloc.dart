
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:review_info/Data/repository/irepository.dart';

import 'package:review_info/UI/AllScreens/HomeScreen/pages/HomeScreen.dart';
import 'HomeScreen_Event.dart';
import 'HomeScreen_State.dart';


class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {

   IRepository _repository;

  HomeScreenBloc(this._repository) : super(HomeScreenState.initail()) ;


  HomeScreenState get initialState => HomeScreenState.initail();

  Stream<HomeScreenState> mapEventToState(
      HomeScreenEvent event,
      ) async* {


    if (event is ShowListNotes) {
      try {
        // yield state.rebuild((b) => b
        //   ..Notes_IDS = event.NotesIDS
        // );
        yield state.rebuild((b) => b
          ..success = false
        );

        yield state.rebuild((b) => b
          ..Notes = event.Notes
        );
        yield state.rebuild((b) => b
          ..FilteredNotes = event.Filtered_Notes
        );
        yield state.rebuild((b) => b
          ..success = true
        );


      } catch (e) {
        print('get Error $e');

      }
    }



    if (event is DeleteNote) {
      try {

        yield state.rebuild((b) => b
          ..success = false
        );

     state.Notes!.removeAt(event.Index!);
     state.FilteredNotes!.removeAt(event.Index!);


        yield state.rebuild((b) => b
          ..success = true
        );



      } catch (e) {
        print('get Error $e');

      }
    }

    if (event is SelectNote) {
      try {
        yield state.rebuild((b) => b
          ..success = false
        );
        yield state.rebuild((b) => b
          ..Selected_Index = event.Index!
        );
        int old_Index = state.Note_Selected!.indexOf(true);
        if (old_Index!=-1) {
          yield state.rebuild((b) =>
          b
            ..Note_Selected![old_Index] = false
          );
        }
        yield state.rebuild((b) => b
          ..Note_Selected![event.Index!] = true
        );
        yield state.rebuild((b) => b
          ..success = true
        );

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is ClearNoteSelection) {
      try {
        yield state.rebuild((b) => b
          ..success = false
        );
        if (event.Index! != -1)
        yield state.rebuild((b) => b
          ..Note_Selected![event.Index!] = false
        );
        yield state.rebuild((b) => b
          ..success = true
        );

      } catch (e) {
        print('get Error $e');
      }
    }



    if (event is SearchNotes) {
      try {
   yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        state.FilteredNotes!.clear();
        print("Cleared");
   print(state.FilteredNotes);
   print(state.Notes);
   print("Outside");
        state.Notes!.forEach((Object) {
          if (Object.Value!
              .toLowerCase()
              .contains(event.KeyWord!.toLowerCase())) {
            print(state.FilteredNotes);
            print(state.Notes);
            state.FilteredNotes!.add(Object);
          }
        });
   print("Outside Finished LOOP");
        print(state.FilteredNotes);
        print(state.Notes);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true);

      } catch (e) {
        print('get Error $e');
      }
    }


    // if (event is SignInFacebook) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..data = null
    //     );
    //
    //    final date = await _repository.LoginWithFacebook(event.AccessToken!,event.fcmToken!);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //       ..data.replace(date)
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //        ..data = null
    //     );
    //   }
    // }
    //
    // if (event is SigninWithGoogle) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..data = null
    //     );
    //
    //    final date = await _repository.LoginWithGoogle(event.Email!,event.image!,event.Name!,event.fcmToken!);
    //     print(date);
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //       ..data.replace(date)
    //     );
    //
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = false
    //        ..data = null
    //     );
    //   }
    // }
  }
}

