Example main.dart

```md
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/manager/cache/shared_pref.dart';
import 'app/routes/app_pages.dart';
import 'config/theme/my_theme.dart';
import 'config/translations/localization_service.dart';

Future<void> main() async {
  // wait for bindings
  WidgetsFlutterBinding.ensureInitialized();

  // init shared preference
  await MySharedPref.init();

  runApp(
    ScreenUtilInit(
      // xd art board size
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, widget) {
        return GetMaterialApp(
              title: "GetXSkeleton",
              useInheritedMediaQuery: true,
              debugShowCheckedModeBanner: false,
              builder: (context,widget) {
                bool themeIsLight = MySharedPref.getThemeIsLight();
                return Theme(
                  data: MyTheme.getThemeData(isLight: themeIsLight),
                  child: MediaQuery(
                    // prevent font from scalling (some people use big/small device fonts)
                    // but we want our app font to still the same and dont get affected
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: widget!,
                  ),
                );
              },
              initialRoute: AppPages.INITIAL, // first screen to show when app is running
              getPages: AppPages.routes, // app screens
              locale: MySharedPref.getCurrentLocal(), // app language
              translations: LocalizationService(), // localization services in app (controller app language)
            );
      },
    ),
  );
}
```

## Command Usage :wrench:
> Make sure you are in the root of your project
```sh
easy generate -n <project_name>
```

:copyright: 2022 Eren KARA