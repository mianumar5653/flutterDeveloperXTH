import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umar_arshad_flutter_developer_xth/Constants/colors.dart';
import 'package:umar_arshad_flutter_developer_xth/Constants/styles.dart';
import 'package:umar_arshad_flutter_developer_xth/Models.dart/profile_tiles.dart';
import 'package:umar_arshad_flutter_developer_xth/Providers/theme_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {
                    // final themeChange = Provider.of<ThemeController>(context);
                    if (context.read<ThemeController>().darkTheme) {
                      context.read<ThemeController>().setDarkTheme(false);
                      setState(() {});
                    } else {
                      context.read<ThemeController>().setDarkTheme(true);
                      setState(() {});

                    }
                    log(context.read<ThemeController>().darkTheme.toString());
                  },
                  child: Icon(
                    context.read<ThemeController>().darkTheme
                        ? Icons.dark_mode_outlined
                        : Icons.light_mode_outlined,
                    size: size.height * .04,
                    color: context.read<ThemeController>().darkTheme
                        ? Colors.white
                        : blackColor,
                  ),
                ),
              )
            ],
          ),
          profileDetailWidget(size, context),
          const SizedBox(
            height: 25,
          ),
          profileListTiles(size),
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(10),
            width: size.width * .7,
            height: size.height * .08,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: context.read<ThemeController>().darkTheme
                  ? Colors.white
                  : const Color(0xff212121),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "Logout",
              style: headingTextStyle.copyWith(
                  fontSize: 20,
                  color: context.read<ThemeController>().darkTheme
                      ? blackColor
                      : Colors.white),
            ),
          )
        ],
      ),
    );
  }

  profileDetailWidget(var size, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: amberColor,
          radius: size.height * .08,
          child: CircleAvatar(
            backgroundColor: blackColor,
            radius: size.height * .074,
            child: Icon(
              Icons.person_outline,
              size: size.height * .05,
              color: amberColor,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "John Doe",
          style: headingTextStyle.copyWith(
              color: context.read<ThemeController>().darkTheme
                  ? Colors.white
                  : blackColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "john.doe@example.com",
          style: subHeadingTextStyle.copyWith(
              color: context.read<ThemeController>().darkTheme
                  ? Colors.white
                  : blackColor),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: size.width * .7,
          height: size.height * .06,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: amberColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "Upgrade To PRO",
            style: headingTextStyle.copyWith(fontSize: 20),
          ),
        )
      ],
    );
  }

  profileListTiles(var size) {
    return Container(
      height: size.height * .5,
      child: ListView.builder(
        itemCount: profileTilesData.length,
        itemBuilder: (context, index) {
          return Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(10),
              width: size.width * .7,
              height: size.height * .08,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffd0d8dc),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        profileTilesData[index].iconData,
                        color: blackColor,
                        size: size.height * .03,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "${profileTilesData[index].title}",
                        style: headingTextStyle.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: blackColor,
                        size: size.height * .03,
                      )
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
