import 'package:flutter/material.dart';
import 'package:travel/constants.dart';
import 'package:travel/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/home_bg.png",
            height: getProportionateScreenHeight(315),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              SizedBox(height: getProportionateScreenHeight(80)),
              Text(
                'Travelers',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(73),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 0.5,
                ),
              ),
              Text(
                'Travel Community App',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Positioned(
            bottom: getProportionateScreenWidth(-25),
            child: Container(
                width: getProportionateScreenWidth(313),
                height: getProportionateScreenHeight(50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color(0xFF3E4067)),
                  boxShadow: [kDefualtShadow],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search your destination...",
                      hintStyle: TextStyle(
                          fontSize: getProportionateScreenWidth(12),
                          color: Color(0xFF464A7E))),
                )),
          )
        ],
      )
    ]);
  }
}
