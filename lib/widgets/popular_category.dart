import 'package:flutter/material.dart';
import 'package:home_rental/constants.dart';
import 'package:home_rental/models/popular_homes_data.dart';

class PopularCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: pophomes.length,
          itemBuilder: (context, index) {
            PopularHomes pophome = pophomes[index];
            return Container(
                height: size.height * 0.25 - 5.0,
                width: size.width * 0.46,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.only(
                  right: 10.0,
                  left: 3.0,
                  bottom: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [kBoxShadow],
                ),
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.16,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          pophome.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pophome.location,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                pophome.pinLocation,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Ksh.${pophome.price}',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
