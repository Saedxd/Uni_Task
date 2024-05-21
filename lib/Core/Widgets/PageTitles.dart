// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitle extends StatefulWidget {
   PageTitle({Key? key,required this.Text}) : super(key: key);
  String Text;
  @override
  State<PageTitle> createState() => _PageTitleState();
}

class _PageTitleState extends State<PageTitle> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        widget.Text,
        style: GoogleFonts.montserrat().copyWith(
          fontSize: 20.sp,
          color: const Color(0xff3b2d2f),
          fontWeight: FontWeight.w700,
        ),
        softWrap: false,
      ),
    );
  }
}
