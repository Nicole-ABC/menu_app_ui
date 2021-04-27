import 'package:dark_mode_food_app/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VeganScreen extends StatefulWidget {
  @override
  _VeganScreenState createState() => _VeganScreenState();
}

class _VeganScreenState extends State<VeganScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text('Vegan',
            style: TextStyle(
                color: kAccentColor, fontFamily: 'Olivia_Kevin', fontSize: 30)),
        leading: Material(
          type: MaterialType.transparency,
          child: InkWell(
            splashColor: kAccentColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                margin: EdgeInsets.all(kDefaultPadding / 2),
                child: SvgPicture.asset(
                  'assets/svg_icons/home.svg',
                  color: Colors.white,
                )),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0005, 1.0],
                    colors: [kPrimaryColor, kDarkColor])),
          ),
          Positioned(
            child: Container(
              alignment: Alignment.center,
              height: size.height / 2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/vegetable_salad.png'),
              )),
            ),
          ),
          Positioned(top: 250, right: -26, child: NextButton()),
          Positioned(top: 450, left: 20, right: 20, child: FoodDetails()),
          Positioned(
              left: 0,
              right: 0,
              bottom: kDefaultPadding * 2.5,
              child: BuyButton())
        ],
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        splashColor: kAccentColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(35),
        onTap: () {
          print('next');
        },
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.8),
          height: 70,
          width: 80,
          decoration: BoxDecoration(
              color: kTextColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(35)),
          child: SvgPicture.asset(
            'assets/svg_icons/right_arrow.svg',
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('bought');
      },
      child: Container(
        height: kDefaultPadding * 4.2,
        width: kDefaultPadding * 8,
        child: SvgPicture.asset(
          'assets/svg_icons/buy_button.svg',
          color: kTextColor,
        ),
      ),
    );
  }
}

class FoodDetails extends StatelessWidget {
  const FoodDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Vegetable salad',
              style: TextStyle(
                  color: kTextColor, fontFamily: 'Signatria', fontSize: 40),
            ),
            Spacer(),
            Text(
              '₦1500',
              style: TextStyle(
                  color: kTextColor, fontFamily: 'Olivia_Kevin', fontSize: 25),
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Made only with the freshest green vegetables, suitable for our veggie-loving customers',
          style: TextStyle(
              color: kAccentColor, fontFamily: 'Olivia_Kevin', fontSize: 20),
        )
      ],
    );
  }
}
