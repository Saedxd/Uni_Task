import 'dart:convert';
import 'dart:io';

//
// import 'package:Yumgott/Core/Classes/Classes.dart';
// import 'package:Yumgott/models/GetAllProductsModel/GetAllProductsModel.dart';
// import 'package:Yumgott/models/GetAllRestaurantModel/GetAllRestaurantModel.dart';
// import 'package:Yumgott/models/GetAllUsersModel/GetAllUsersModel.dart';
// import 'package:Yumgott/models/GetAllVidoesModel/AllVidoesListModel.dart';
// import 'package:Yumgott/models/GetCategoriesModel/GetCategoriesModel.dart';
// import 'package:Yumgott/models/GetCategoryProductsModel/GetCategoryProductsModel.dart';
// import 'package:Yumgott/models/GetCategoryRestaurantsModel/GetCategoryRestaurantsModel.dart';
// import 'package:Yumgott/models/GetMenuModel/GetMenuModel.dart';
// import 'package:Yumgott/models/GetNotificationsModel/GetNotificationsModel.dart';
// import 'package:Yumgott/models/GetVideoCommentsModel/GetVideoCommentsModel.dart';
// import 'package:Yumgott/models/GetallTranscationsModel/GetallTranscationsModel.dart';
// import 'package:Yumgott/models/GetoneVideoModel/GetoneVideoModel.dart';
// import 'package:Yumgott/models/SendCodeModel/SendCodeModel.dart';
// import 'package:Yumgott/models/SendCommentModel/SendCommentModel.dart';
// import 'package:Yumgott/models/UserDataModel/UserDataModel.dart';
import '../http_helper/Ihttp_helper.dart';
import '../prefs_helper/iprefs_helper.dart';
import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;

  Repository(this._ihttpHelper, this._iprefHelper);


  // @override
  // Future<UserDataModel> Register(String Email,String Password,String name,String mobileNumber,int code,String fcm_token)async{
  //   final Data = await _ihttpHelper.Register(Email, Password, name, mobileNumber, code,fcm_token);
  //   return Data;
  // }
  // @override
  // Future<UserDataModel> Login(String Email,String Password,String fcm_token)async{
  //   final Data = await _ihttpHelper.Login(Email, Password,fcm_token);
  //   return Data;
  // }
  // @override
  // Future<UserDataModel> LoginWithFacebook(String accessToken,String fcm_token)async{
  //   final Data = await _ihttpHelper.LoginWithFacebook(accessToken,fcm_token);
  //   return Data;
  // }
  // @override
  // Future<UserDataModel> SignUpWithFacebook(String accessToken,String fcm_token)async{
  //   final Data = await _ihttpHelper.SignUpWithFacebook(accessToken,fcm_token);
  //   return Data;
  // }
  // @override
  // Future<UserDataModel> LoginWithGoogle(String Email,String image,String name,String fcm_token)async{
  //   final Data = await _ihttpHelper.LoginWithGoogle(Email, image, name,fcm_token);
  //   return Data;
  // }
  // @override
  // Future<UserDataModel> SignUpWithGoogle(String Email,String image,String name,String fcm_token)async{
  //   final Data = await _ihttpHelper.SignUpWithGoogle(Email, image, name ,fcm_token);
  //   return Data;
  // }
  // @override
  // Future<SendCodeModel> SendCode(String email)async{
  //   final Data = await _ihttpHelper.SendCode(email);
  //   return Data;
  // }
  // @override
  // Future<GetAllUsersModel> GetAllUsers()async{
  //   final Data = await _ihttpHelper.GetAllUsers();
  //   return Data;
  // }
  // @override
  // Future<UserDataModel> GetProfile(String Token)async{
  //   String auth = await _iprefHelper.getToken();
  //   print(auth);
  //   final Data = await _ihttpHelper.GetProfile(Token,auth);
  //   return Data;
  // }
  // @override
  // Future<GetAllRestaurantModel> GetAllRestaurants(int limit,int page)async{
  //   final Data = await _ihttpHelper.GetAllRestaurants(limit, page);
  //   return Data;
  // }
  // @override
  // Future<GetCategoriesModel> GetAllCategories()async{
  //   final Data = await _ihttpHelper.GetAllCategories();
  //   return Data;
  // }
  // @override
  // Future<GetCategoryRestaurantsModel> GetCategoryRestaurants(String id)async{
  //   final Data = await _ihttpHelper.GetCategoryRestaurants(id);
  //   return Data;
  // }
  //
  // Future<GetCategoryProductsModel> GetCategoryProducts(String Category_ID)async{
  //   final Data = await _ihttpHelper.GetCategoryProducts(Category_ID);
  //   return Data;
  // }
  //
  // Future<GetAllProductsModel> GetAllProducts(int Page,int limit)async{
  //   final Data = await _ihttpHelper.GetAllProducts(Page, limit);
  //   return Data;
  // }
  // Future<AllVidoesListModel> GetShortVidoes(int page,int limit)async{
  //   final Data = await _ihttpHelper.GetShortVidoes(page, limit);
  //   return Data;
  // }
  // Future<GetMenuModel> GetRestaurantMenu(String Restaurant_ID)async{
  //   final Data = await _ihttpHelper.GetRestaurantMenu(Restaurant_ID);
  //   return Data;
  // }
  // Future<GetoneVideoModel> LikeShortVideo(
  //     String important_id,
  //     String received_user,
  //     String MyUsername,
  //     )async{
  //   String auth = await _iprefHelper.getToken();
  //   print(auth);
  //   final Data = await _ihttpHelper.LikeShortVideo(important_id, auth, received_user,MyUsername);
  //   return Data;
  //
  // }
  // Future<GetMenuModel> UpdateUser(User user,String id,)async{
  //   String auth = await _iprefHelper.getToken();
  //   print(auth);
  //   final Data = await _ihttpHelper.UpdateUser(user, auth, id,);
  //   return Data;
  // }
  // Future<GetNotificationsModel> GetNotifications()async{
  //   String auth = await _iprefHelper.getToken();
  //   print(auth);
  //   final Data = await _ihttpHelper.GetNotifications(auth);
  //   return Data;
  // }
  // Future<GetallTranscationsModel> GetTransactions()async{
  //   String auth = await _iprefHelper.getToken();
  //   print(auth);
  //   final Data = await _ihttpHelper.GetTransactions(auth);
  //
  //   return Data;
  // }
  //
  // Future<GetVideoCommentsModel> GetVideoComments(
  //     String Video_ID,
  //     )async{
  //   String auth = await _iprefHelper.getToken();
  //   print(auth);
  //   final Data = await _ihttpHelper.GetVideoComments(Video_ID, auth);
  //   return Data;
  // }
  // Future<SendCommentModel> SendCommentOnVideo(
  //     String Video_ID,
  //     String comment,
  //     String product,
  //     String user,
  //     )async{
  //   String auth = await _iprefHelper.getToken();
  //   print(auth);
  //   final Data = await _ihttpHelper.SendCommentOnVideo(Video_ID, auth, comment, product, user);
  //   return Data;
  // }

}
