
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_info/App/app.dart';
import 'package:review_info/Core/Classes/Classes.dart';
import 'package:review_info/Core/Functions/Fucntions.dart';
import 'package:review_info/Injection.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_Bloc.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_Event.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_State.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/pages/CreateNotes.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/pages/EditNotes.dart';

class SearchNotesScreen extends StatefulWidget {
  const SearchNotesScreen({Key? key}) : super(key: key);

  @override
  State<SearchNotesScreen> createState() => _SearchNotesScreenState();
}

class _SearchNotesScreenState extends State<SearchNotesScreen> {
   List<Map> Notes_List = [];
  // List<String> NotesValues = [];
  // List<int> NotesIDS = [];
  final TextEditingController _EmailController = TextEditingController();
  final _formkey1 = GlobalKey<FormState>(); //password
  final _HomeScreenBloc = sl<HomeScreenBloc>();

  List<Note> Notes = [];
  List<Note> FILTERED_Notes = [];


  void GetAllNotes() async {
    List<Map> response = await DB.ReadData("SELECT * FROM 'Notes' ");
    Notes_List = response;
    for(int i = 0;i<response.length;i++){
      Note Notee = Note();
      Notee.id = response[i]["id"];
      Notee.Value = response[i]["Value"].toString();
      Notes.add(Notee);

      Note Notee2 = Note();
      Notee2.id = response[i]["id"];
      Notee2.Value = response[i]["Value"].toString();
      FILTERED_Notes.add(Notee2);
    }
    _HomeScreenBloc.add(ShowListNotes(((b) => b..Notes =Notes ..Filtered_Notes = FILTERED_Notes)));
    print(response);
    print(Notes_List);
  }

  int index = -1;

  @override
  void initState() {
    GetAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _HomeScreenBloc,
        builder: (BuildContext context, HomeScreenState state) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                width: w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.w, top: 10.h),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        state.Selected_Index != -1
                            ? Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20.w),
                              child: MaterialButton(
                                onPressed: () async {
                                  int response = await DB.InsertData(
                                      "DELETE FROM 'Notes'  WHERE id = ${state.FilteredNotes![state.Selected_Index!].id}");
                                  print(response);
                                  _HomeScreenBloc.add(DeleteNote(((b) => b..Index = state.Selected_Index!)));
                                  AnimatedSnackBar.material(
                                    "Note Deleted Successfully",
                                    type: AnimatedSnackBarType.success,
                                    duration: Duration(seconds: 3),
                                  ).show(context);
                                },
                                color: Colors.red,
                                textColor: Colors.white,
                                child: Text("Delete"),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 25.w),
                              child: MaterialButton(
                                onPressed: () async {
                                  PushNavigator(context, EditNoteScreen(Text: state.FilteredNotes![state.Selected_Index!].Value.toString(),ID: state.FilteredNotes![state.Selected_Index!].id!,));
                                },
                                color: Colors.red,
                                textColor: Colors.white,
                                child: Text("Edit"),
                              ),
                            ),

                          ],
                        )
                            : Container(),

                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 45.h),
                      child: Text(
                        "Saved Notes",
                        softWrap: true,
                        style: GoogleFonts.aBeeZee().copyWith(
                          color: Colors.black,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.h),
                      width: 260.w,
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: _formkey1,
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          textInputAction: TextInputAction.next,
                          controller: _EmailController,
                          onChanged: (value) {
                            _HomeScreenBloc.add(SearchNotes((b) => b..KeyWord = value));
                            _HomeScreenBloc.add(ClearNoteSelection((b) => b..Index = state.Selected_Index));
                          },
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
                            labelText: "Search",

                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 1.h),
                          ),
                          keyboardType: TextInputType.text,
                          maxLines: 1,

                          // obscureText: SecureInput_pass,
                        ),
                      ),
                    ),

                    state.success!?
                    Expanded(
                      child: Container(
                          width: w,
                          margin: EdgeInsets.only(
                              top: 50.h, right: 20.w, left: 20.w),
                          child: ScrollConfiguration(
                              behavior: MyBehavior(),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  physics: AlwaysScrollableScrollPhysics(
                                      parent: BouncingScrollPhysics()),
                                  scrollDirection: Axis.vertical,
                                  itemCount: state.FilteredNotes!.length,
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      height: 15.h,
                                    );
                                  },
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        this.index = index;
                                        _HomeScreenBloc.add(SelectNote(((b) => b..Index = index)));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: state.success!
                                              ? state.Note_Selected![index]
                                              ? Colors.red
                                              : Colors.grey
                                              : null,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(25.0.r),
                                              bottomRight:
                                              Radius.circular(25.0.r),
                                              topLeft: Radius.circular(25.0.r),
                                              bottomLeft:
                                              Radius.circular(25.0.r)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 16.h, bottom: 16.h),
                                              width: 250.w,
                                              child: Center(
                                                child: Text(
                                                  state.FilteredNotes![index]
                                                      .Value.toString(),
                                                  softWrap: true,
                                                  style: GoogleFonts.aBeeZee()
                                                      .copyWith(
                                                      color: Colors.black,
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }))),
                    ):Container(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
