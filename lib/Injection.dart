// ignore_for_file: constant_identifier_names, file_names
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:review_info/Data/http_helper/Ihttp_helper.dart';
import 'package:review_info/Data/http_helper/http_helper.dart';
import 'package:review_info/Data/prefs_helper/iprefs_helper.dart';
import 'package:review_info/Data/prefs_helper/prefs_helper.dart';
import 'package:review_info/Data/repository/irepository.dart';
import 'package:review_info/Data/repository/repository.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_Bloc.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/bloc/HomeScreen_Bloc.dart';


final sl = GetIt.instance;


const BaseUrl = "https://api-yum.onrender.com/api/v1";
//const BaseUrl = "http://192.168.1.115:8080/api/v1";



Future iniGetIt() async {
  sl.registerLazySingleton(() => Dio(
      BaseOptions(baseUrl: BaseUrl, headers: {
      }, responseType: ResponseType.plain)
  ));

//DATA
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl()));
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());


  //factory means this dependency injection will provide us with new instance of get it everytime its called
  //so sometimes we call bloc in dispose which leads stream to close so useing the same instance that means it will be closed.
 sl.registerFactory(() => HomeScreenBloc(sl()));
   // sl.registerFactory(() => MenuScreenBloc(sl()));

  // sl.registerFactory(() => SignUpBloc(sl()));
  // sl.registerFactory(() => SliderBloc(sl()));
  // sl.registerFactory(() => HomePageBloc(sl()));
  // sl.registerFactory(() => NotificationsBloc(sl()));
  // sl.registerFactory(() => ShortVidoesBloc(sl()));
  // sl.registerFactory(() => OrderScreenBloc(sl()));
  // sl.registerFactory(() => RestaurantsScreenBloc(sl()));
  // sl.registerFactory(() => UserProfileBloc(sl()));
  // sl.registerFactory(() => HisUserProfileBloc(sl()));
  // sl.registerFactory(() => LocationVidoesBloc(sl()));
  // sl.registerFactory(() => MenuBloc(sl()));
  // sl.registerFactory(() => HisRestaurantProfileBloc(sl()));
  // sl.registerFactory(() => ProductDetailsBloc(sl()));
  // sl.registerFactory(() => SettingsScreenBloc(sl()));
  // sl.registerFactory(() => CategoryRestaurantsBloc(sl()));
  // sl.registerFactory(() => CameraBloc(sl()));
  // sl.registerFactory(() => DisplayVidoeBloc(sl()));
  // sl.registerFactory(() => TransactionBloc(sl()));
  // sl.registerFactory(() => ForgotPasswordBloc(sl()));
  // sl.registerFactory(() => VerificationBloc(sl()));
  // sl.registerFactory(() => NewPasswordBloc(sl()));



}
//we use this package for dependency injection and use for connecting all our APP with each other
//for example we give in constructor this get_it in both http and repository so the object can come IN the Easy Way.

