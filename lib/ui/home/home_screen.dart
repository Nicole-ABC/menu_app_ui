import 'package:dark_mode_food_app/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/custom_header.dart';
import 'components/menu_3d_title.dart';
import 'components/type_grid.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isCheckingMenu = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Le Fancy Pants',
          style: TextStyle(
              fontFamily: 'Olivia_Kevin',
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 35
          ),
        ),
        leading: IconButton(
          onPressed: (){
            print('tapped: Menu');
          },
          icon: SvgPicture.asset(
            'assets/svg_icons/menu.svg',
            semanticsLabel: 'Menu',
            color: kTextColor,
            height: 25,
          ),
        ),
      ),
      backgroundColor: kDarkColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeader(size: size),
              MenuTitle(size: size),
              TypeGrid()
            ],
          ),
        ),
      ),
    );
  }
}

