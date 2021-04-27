import 'package:dark_mode_food_app/constants/constants.dart';
import 'package:flutter/cupertino.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
          width: double.infinity,
          height: size.height/5,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(44),
                  bottomRight: Radius.circular(44)
              )
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding),
          child: RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hi Priscilla!\n\n',
                    style: TextStyle(
                        fontFamily: 'Olivia_Kevin',
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                    ),
                  ),
                  TextSpan(
                    text: 'What would you like to eat today?',
                    style: TextStyle(
                        fontFamily: 'Olivia_Kevin',
                        color: kAccentColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  )
                ]
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 20,
            child: Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.all(kDefaultPadding/3),
              decoration: BoxDecoration(
                  color: kDarkColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, -10),
                        color: kAccentColor.withOpacity(0.43),
                        blurRadius: 8
                    ),
                  ]
              ),
              child: Image.asset('assets/images/boy.png'),
            )
        )
      ],
    );
  }
}
