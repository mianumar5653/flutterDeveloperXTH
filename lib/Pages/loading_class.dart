import 'package:flutter/material.dart';
import 'package:umar_arshad_flutter_developer_xth/Constants/colors.dart';
import 'package:umar_arshad_flutter_developer_xth/Providers/theme_controller.dart';
import 'package:umar_arshad_flutter_developer_xth/SharedPreference/theme_storage.dart';
class LoadingClass extends StatefulWidget {
  const LoadingClass({ Key? key }) : super(key: key);

  @override
  State<LoadingClass> createState() => _LoadingClassState();
}

class _LoadingClassState extends State<LoadingClass> {
  ThemeController themeChangeProvider =  ThemeController();
  @override
  void initState() {
    // TODO: implement initState
    getCurrentAppTheme();
    loadTime();
    super.initState();
  }
  loadTime(){
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, '/profile');
    });
  }
  void getCurrentAppTheme() async {
    var value=await themeChangeProvider.themeClass.getTheme();
  themeChangeProvider.setDarkTheme(value);
  setState(() {
    
  });
      
}
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CircularProgressIndicator(color: amberColor,),
    );
  }
}