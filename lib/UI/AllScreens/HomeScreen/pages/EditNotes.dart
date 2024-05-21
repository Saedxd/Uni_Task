
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_info/Injection.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_Bloc.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/pages/CreateNotes.dart';

class EditNoteScreen extends StatefulWidget {
   EditNoteScreen({Key? key,required this.Text,required this.ID}) : super(key: key);
String Text;
int ID;
  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  final TextEditingController _EmailController = TextEditingController();
  final _formkey1 = GlobalKey<FormState>(); //password
  final _HomeScreenBloc = sl<HomeScreenBloc>();


  @override
  void initState() {
    _EmailController.text = widget.Text;
    super.initState();
  }
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
                  "Edit Note",
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
                      labelText: "Edit Note",

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
                    int response = await DB.InsertData(
                        "UPDATE 'Notes' SET 'Value' = '${_EmailController.text.toString()}' WHERE id = ${widget.ID.toString()} ");
                    print(response);
                    AnimatedSnackBar.material(
                      "Note Edited Successfully",
                      type: AnimatedSnackBarType.success,
                      duration: Duration(seconds: 3),
                    ).show(context);
                    _EmailController.clear();
                    Navigator.pop(context);
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Save Changes"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
