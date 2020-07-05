import 'package:flutter/material.dart';
import 'package:home_rental/widgets/appbar_Container.dart';
import 'package:home_rental/widgets/category_list.dart';
import 'package:home_rental/widgets/filtered_homes.dart';
import 'package:home_rental/widgets/popular_category.dart';

import '../constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'I',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: 'Home',
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarContainer(),
            SizedBox(
              height: size.height * 0.03,
            ),
            CategoryList(),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.045,
                    width: 5.0,
                    color: kPrimaryColor,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Most Popular',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.1),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            PopularCategory(),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.045,
                    width: 5.0,
                    color: kPrimaryColor,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Homes interests',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ),
            FilteredHomes(),
          ],
        ),
      ),
    );
  }
}
