import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umar_arshad_flutter_developer_xth/Constants/styles.dart';
import 'package:umar_arshad_flutter_developer_xth/Pages/loading_class.dart';
import 'package:umar_arshad_flutter_developer_xth/Pages/profile_screen.dart';
import 'package:umar_arshad_flutter_developer_xth/Providers/theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => ThemeController()))
      ],
      child: Consumer<ThemeController>(
        builder: (context,appPro,_){
          return MaterialApp(
          title: 'Flutter Developer --XTH',
          // darkTheme: ,
          // themeMode: ,
          theme: Styles.themeData(context.read<ThemeController>().darkTheme, context),
          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            '/': (context) => const LoadingClass(),
            '/profile': (context) => const ProfileScreen(),
          },
          // home: const ProfileScreen(),
        );
        },
        
      ),
    );
  }
}
