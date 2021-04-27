import 'package:flutter/material.dart';
import 'package:dark_mode_food_app/constants/constants.dart';

class MenuTitle extends StatelessWidget {
  const MenuTitle({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 50,
        width: size.width/3,
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 0,
              child: Text(
                'Menu',
                style: TextStyle(
                    fontFamily: 'Signatria',
                    color: kAccentColor.withOpacity(0.4),
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                ),
              ),
            ),
            Positioned(
              child: Text(
                'Menu',
                style: TextStyle(
                    fontFamily: 'Signatria',
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                ),
              ),
            ),
          ],
        )
    );
  }
}