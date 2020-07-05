import 'package:flutter/material.dart';

import '../constants.dart';

class AppBarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.18,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: size.height * 0.2 - 27,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      buildContainer('Buy'),
                      SizedBox(width: size.width * 0.02),
                      buildContainer('Bid'),
                      SizedBox(width: size.width * 0.02),
                      buildContainer('Rent'),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Container();
                        },
                      );
                    },
                    child: Container(
                      width: 85.0,
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Filter',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w900),
                          ),
                          Icon(Icons.filter_list,
                              color: Colors.white, size: 27),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              margin: EdgeInsets.only(left: 40.0, right: 40.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: kPrimaryColor.withOpacity(0.5),
                    offset: Offset(0, 10),
                    blurRadius: 10.0,
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search your dream home..',
                  suffixIcon: Icon(
                    Icons.search,
                    color: kPrimaryColor.withOpacity(0.8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container buildContainer(String text) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), color: Colors.white),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 17.0, fontWeight: FontWeight.w600, letterSpacing: 1.1),
    ),
  );
}
