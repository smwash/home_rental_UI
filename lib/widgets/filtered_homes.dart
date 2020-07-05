import 'package:flutter/material.dart';
import 'package:home_rental/constants.dart';
import 'package:home_rental/models/interested_homes.dart';
import 'package:home_rental/screens/detail_page.dart';

class FilteredHomes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      child: ListView.builder(
          // shrinkWrap: true,
          // physics: ScrollPhysics(),
          // primary: false,
          itemCount: interestedhomes.length,
          itemBuilder: (context, index) {
            InterestHomes home = interestedhomes[index];
            return Container(
              height: size.height * 0.3 - 5.0,
              width: size.width,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [kBoxShadow],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(home: home),
                            ),
                          );
                        },
                        child: Image.asset(
                          home.imageUrl,
                          height: size.height * 0.18,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 4.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              home.location,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1),
                            ),
                            Text(
                              'Ksh.${home.price}',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: kPrimaryColor),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(home.pinLocation),
                            SizedBox(height: 2.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.local_hotel,
                                            color: kPrimaryColor, size: 20.0),
                                        SizedBox(width: 7.0),
                                        Text(
                                          '${home.beds} Beds',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 15.0),
                                    Row(
                                      children: [
                                        Icon(Icons.hot_tub,
                                            color: kPrimaryColor, size: 20.0),
                                        SizedBox(width: 7.0),
                                        Text(
                                          '${home.beds} Bathrooms',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 20.0),
                                    Text(
                                      home.rating,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
