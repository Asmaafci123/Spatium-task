import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:spatium_task/logic/get_posts/get_posts_cubit.dart';
import 'package:spatium_task/presentation/screens/posts_screen/get_posts_screen.dart';
import 'core/config/routes/routes.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  // await Hive.initFlutter();
  // Hive.registerAdapter(UserAdapter());
  // Hive.registerAdapter(SendLocationModelAdapter());
  // Hive.registerAdapter(CredentialDetailsAdapter());
  runApp(
      const PetCokeApp());
}

class PetCokeApp extends StatelessWidget {
  const PetCokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      // splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<GetPostsCubit>(create: (context) => sl<GetPostsCubit>()),
          ],
          child: MaterialApp(
           // navigatorKey: AppConstants.navigatorKey,
            //localizationsDelegates: context.localizationDelegates,
          //  supportedLocales: context.supportedLocales,
           // locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            // theme: ThemeData(
            //   scaffoldBackgroundColor: AppColors.backgroundColor,
            //   primarySwatch: AppColors.materialMainColor,
            //   iconTheme: IconThemeData(color: AppColors.mainColor),
            //   fontFamily: 'Cairo',
            //   // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            //   // useMaterial3: true,
            // ),
           onGenerateRoute: AppRoutes.onGenerateRoutes,
            initialRoute:PostsScreen.routeName,
          ),
        );
      },
    );
  }
}

