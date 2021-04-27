import 'package:dark_mode_food_app/constants/constants.dart';
import 'package:dark_mode_food_app/ui/desserts/desserts_screen.dart';
import 'package:dark_mode_food_app/ui/meat_lovers/meat_lovers_screen.dart';
import 'package:dark_mode_food_app/ui/vegan/vegan_screen.dart';
import 'package:flutter/material.dart';

class TypeGrid extends StatelessWidget {
  const TypeGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TypeCard(
                type: 'All',
                image: 'assets/images/all.jpg',
                press: (){
                  print('tapped: All');
                },
              ),
              SizedBox(
                width: 30,
              ),
              TypeCard(
                type: 'Vegan',
                image: 'assets/images/vegan.jpeg',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VeganScreen()));
                  print('tapped: Vegan');
                },
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TypeCard(
                type: 'Meat lovers',
                image: 'assets/images/meat_lovers.jpg',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MeatLoversScreen()));
                  print('tapped: Meat lovers');
                },
              ),
              SizedBox(
                width: 30,
              ),
              TypeCard(
                type: 'Desserts',
                image: 'assets/images/desserts.jpg',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DessertsScreen()));
                  print('tapped: Desserts');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}



class TypeCard extends StatelessWidget {
  final String type;
  final String image;
  final Function press;
  TypeCard({this.type, this.image, this.press});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height/4.7,
            width: size.width/2.7,
            decoration: BoxDecoration(
                color: kDarkColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        image
                    )
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(3, 3),
                      color: kPrimaryColor.withOpacity(0.68),
                      blurRadius: 8
                  ),
                  BoxShadow(
                      offset: Offset(-3, -3),
                      color: kAccentColor.withOpacity(0.5),
                      blurRadius: 8
                  )
                ]
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: size.height/4.7,
            width: size.width/2.7,
            decoration: BoxDecoration(
              color: kDarkColor.withOpacity(0.57),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              type,
              style: TextStyle(
                  fontFamily: 'Olivia_Kevin',
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            ),
          ),
        ],
      ),
    );
  }
}
