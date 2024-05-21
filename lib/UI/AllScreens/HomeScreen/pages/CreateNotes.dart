import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_info/Injection.dart';
import 'package:review_info/SqlDB.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_State.dart';

import '../bloc/HomeScreen_Bloc.dart';

class CreateNoteScreen extends StatefulWidget {
  const CreateNoteScreen({Key? key}) : super(key: key);

  @override
  State<CreateNoteScreen> createState() => _CreateNoteScreenState();
}
SqlDB DB = SqlDB();
class _CreateNoteScreenState extends State<CreateNoteScreen> {
  final TextEditingController _EmailController = TextEditingController();
  final _formkey1 = GlobalKey<FormState>(); //password
  final _HomeScreenBloc = sl<HomeScreenBloc>();

  @override
  Widget build(BuildContext context) {
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
        builder: (BuildContext context, HomeScreenState state) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                width: w,
                height: h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.w,top: 10.h),
                          child: IconButton(icon: Icon(Icons.arrow_back_ios),color: Colors.black,onPressed: (){
                            Navigator.pop(context);
                          },),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 37.h,bottom: 70.h),
                      child: Text(
                        "Create a Note",
                        softWrap: true,
                        style: GoogleFonts.aBeeZee().copyWith(
                          color: Colors.black,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      width: 260.w,
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: _formkey1,
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          textInputAction: TextInputAction.next,
                          controller: _EmailController,
                          onChanged: (value) {},
                          onFieldSubmitted: (value) {},
                          cursorColor: Colors.black26,
                          cursorWidth: 1.w,
                          style: TextStyle(
                              fontSize: 17.sp,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: Colors.black26,
                            contentPadding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 10.h),
                            labelText: "New Note",

                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 1.h),
                          ),
                          keyboardType: TextInputType.text,
                          maxLines: 5,

                          // obscureText: SecureInput_pass,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40.h),
                      child: MaterialButton(
                        onPressed: () async {
                          if (_EmailController.text.isNotEmpty) {
                            int response = await DB.InsertData(
                                "INSERT INTO 'Notes' ('Value') VALUES ('${_EmailController
                                    .text.toString()}') ");
                            print(response);
                            AnimatedSnackBar.material(
                              "Note Saved Successfully",
                              type: AnimatedSnackBarType.success,
                              duration: Duration(seconds: 3),
                            ).show(context);
                            _EmailController.clear();
                          }
                        },
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text("Save Note"),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          );
        });
  }
}
