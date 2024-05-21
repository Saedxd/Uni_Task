// ignore_for_file: non_constant_identifier_names, file_names, curly_braces_in_flow_control_structures
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:review_info/Injection.dart';
import 'package:review_info/SqlDB.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_Bloc.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_State.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/pages/CreateNotes.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/pages/SearchNote.dart';
// import 'package:review_info/UI/AllScreens/HomeScreen/pages/ShowNotes.dart';
import '../../../../Core/Functions/Fucntions.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GoogleSignInAccount? googleSignInAccount;
  final _HomeScreenBloc = sl<HomeScreenBloc>();

  //
  // final _HomeScreenbloc = sl<HomeScreenBloc>();

  List<Map> Notes_List = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext Context) {
    var h = MediaQuery
        .of(context)
        .size
        .height;
    var w = MediaQuery
        .of(context)
        .size
        .width;
    return BlocBuilder(
        bloc: _HomeScreenBloc,
        builder: (BuildContext context, HomeScreenState state)
    {
      return
      WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          key: _scaffoldKey,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 50.h),
              width: w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 140.h),
                    child: Text("Home",
                      softWrap: true,
                      style: GoogleFonts.aBeeZee(
                      ).copyWith(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,

                      ),

                    ),
                  ),
              Column(
                children: [
                  // MaterialButton(
                  //   onPressed: () async {
                  //     // PushNavigator(Context, AllNotes());
                  //   },
                  //   color: Colors.red,
                  //   textColor: Colors.white,
                  //   child: Text("Show All Notes"),
                  // ),
                  MaterialButton(
                    onPressed: () async {
                      PushNavigator(Context, CreateNoteScreen());

                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Create Note"),
                  ),
                  MaterialButton(
                    onPressed: () async {
                      PushNavigator(Context, SearchNotesScreen());

                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Search Note"),
                  ),

                ],
              )
                ],
              ),
            ),
          ),
        ),
      );
    }
    );
    }
  }


//
// Animatable<Color?> darkBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffA93064).withOpacity(.9),
//         end: Color(0xff932557).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffA93064).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
//
// Animatable<Color?> normalBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffB9484C).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffB9484C).withOpacity(.9),
//         end: Color(0xff932557).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
//
// Animatable<Color?> lightBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffB9484C).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffB9484C).withOpacity(0.9),
//         end: Color(0xff932557).withOpacity(0.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
// AlignmentTween aT =
// AlignmentTween(begin: Alignment.topRight, end: Alignment.topLeft);
// AlignmentTween aB =
// AlignmentTween(begin: Alignment.bottomRight, end: Alignment.bottomLeft);


