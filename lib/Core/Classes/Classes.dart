
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
//
// class Skills{
//   String Skill_Type="";
//   String Skill_Image="";
//   String Screen_Info="";
//   String Screen_type="";
//   Skills(this.Screen_Info,this.Screen_type,this.Skill_Type,  this.Skill_Image);
// }
//
// class user {
//   String f_name="";
//   String l_name="";
//   String email="";
//   String pass ="";
//   String Role ="";
//   String AreaOF_Interest="";
//   List<String> Interests= [];
//   String Mentee_Goal = "";
//   String Goal_Desc ="";
// }
//
// class PortfolioForm{
//   final TextEditingController ProjectNameController = TextEditingController();
//   final TextEditingController ProjectDescController = TextEditingController();
//   final TextEditingController ProjectLinkController = TextEditingController();
// }
//
// class WorkExperienceForm{
//   final TextEditingController WorkPlaceNameController = TextEditingController();
//   final TextEditingController PositionHeldController = TextEditingController();
//   final TextEditingController StartDateController = TextEditingController();
//   final TextEditingController EndDateController = TextEditingController();
// }
//
// class EducationBackGroundForm{
//   final TextEditingController InstitutionNameController = TextEditingController();
//   final TextEditingController EducationLevelController = TextEditingController();
//   final TextEditingController COStudyController = TextEditingController();
//   final TextEditingController YOeducationController = TextEditingController();
// }
import 'package:built_collection/built_collection.dart';
import 'package:url_launcher/url_launcher.dart';

class MapUtils {

  MapUtils._();

  static Future<void> openMapToLocation(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  static Future<void> openMapToDirection(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/dir/?api=1&destination=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

}

//
// class Product {
//   String Name="";
//   String price="";
//   String ID="";
//   String Image="";
//   String Description ="";
//   double Ratting = 0.0;
// }
//
// class User {
//   String Username="";
//   String ID="";
//   String location="";
//   double? lat=0.0;
//   double? lng=0.0;
//   String Email="";
//   String Image="";
//   String Boi="";
//   String Description ="";
//   BuiltList<UserModel>?  Followers;
//   BuiltList<UserModel>?  Following;
// }
//
// class Order{
//
// }
//
// class notification{
//   String? title;
//   String? Body;
//   String? user;
//   String? Type;
//   String? Requesteduser_Image;
//   String? Time;
// }
//
// class Comment{
//   String? comment;
//   String? ProfileImage;
//   String? UserName;
//   String? time;
// }
//
class Note{
String? Value;
int? id;
}