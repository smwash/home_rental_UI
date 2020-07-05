import 'package:flutter/material.dart';
import 'package:home_rental/models/interested_homes.dart';
import 'package:home_rental/widgets/bottom_container.dart';

import '../constants.dart';

class DetailPage extends StatefulWidget {
  final InterestHomes home;
  DetailPage({this.home});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Icon(Icons.star_border),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            widget.home.imageUrl,
            fit: BoxFit.cover,
            height: size.height * 0.37,
          ),
          SizedBox(height: 12.0),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      boxShadow: [kBoxShadow],
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ksh. ${widget.home.price}',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                widget.home.pinLocation,
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1),
                              ),
                              Text(
                                ', ${widget.home.location}',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.train,
                                color: Colors.tealAccent,
                                size: 28.0,
                              ),
                              SizedBox(height: 7.0),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            children: [
                              Icon(
                                Icons.security,
                                color: Colors.purpleAccent,
                                size: 28.0,
                              ),
                              SizedBox(height: 7.0),
                              Text(
                                '4.8',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            children: [
                              Icon(
                                Icons.traffic,
                                color: Colors.lightBlueAccent,
                                size: 28.0,
                              ),
                              SizedBox(height: 7.0),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PlaceFeature(
                        text: 'Map View',
                        icon: Icons.map,
                        color: Colors.redAccent.withOpacity(0.6),
                      ),
                      PlaceFeature(
                        text: 'Transport',
                        icon: Icons.train,
                        color: kPrimaryColor,
                      ),
                      PlaceFeature(
                        text: 'Restaurants',
                        icon: Icons.restaurant,
                        color: Colors.blueGrey,
                      ),
                      PlaceFeature(
                        text: 'Security',
                        icon: Icons.security,
                        color: Colors.purpleAccent,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.local_hotel,
                              color: kPrimaryColor, size: 20.0),
                          SizedBox(width: 7.0),
                          Text(
                            '${widget.home.beds} Beds',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.0),
                      Row(
                        children: [
                          Icon(Icons.hot_tub, color: kPrimaryColor, size: 20.0),
                          SizedBox(width: 7.0),
                          Text(
                            '${widget.home.beds} Bathrooms',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.0),
                      Row(
                        children: [
                          Icon(Icons.spa, color: kPrimaryColor, size: 20.0),
                          SizedBox(width: 7.0),
                          Text(
                            '${widget.home.size} sqft',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
                  child: Text(
                    'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.1,
                      height: 1.5,
                      wordSpacing: 1.1,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomContainer(
            text: 'CCONTACT',
            color: Colors.white,
            textcolor: Colors.black,
            press: () {
              setState(() {
                active = 0;
              });
            },
          ),
          BottomContainer(
            text: 'BOOK',
            press: () {},
            color: kPrimaryColor,
            textcolor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class PlaceFeature extends StatelessWidget {
  const PlaceFeature({
    Key key,
    this.text,
    this.icon,
    this.color,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            // color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5.0)],
          ),
          child: CircleAvatar(
            radius: 35.0,
            backgroundColor: Colors.white,
            child: Icon(
              icon,
              color: color,
              size: 28.0,
            ),
          ),
        ),
        SizedBox(height: 7.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
