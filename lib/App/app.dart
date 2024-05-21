import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:review_info/UI/AllScreens/HomeScreen/pages/HomeScreen.dart';


class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(_) => const BorderSide(color: Colors.black54);
}
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}


class _MyAppState extends State<MyApp> with WidgetsBindingObserver {

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
            onTap: () {
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              //remove keyboard on touching anywhere on the screen.
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },

            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home:HomeScreen(),
              title: 'Yumgott',
              // localizationsDelegates: const [
              //   DemoLocalization.delegate,
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate
              // ],
            ));
      },
      designSize: Size(375, 812),
    );

  }
}
