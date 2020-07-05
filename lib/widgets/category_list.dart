import 'package:flutter/material.dart';
import 'package:home_rental/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> _categories = [
    'Bungalow',
    'Bedsitter',
    'Flats',
    'Estate',
    'Mansions',
    'Apartments',
  ];
  int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.05,
      alignment: Alignment.center,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (context, index) {
            final category = _categories[index];
            return InkWell(
              splashColor: kPrimaryColor.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category,
                      style: TextStyle(
                          color: _isSelected == index
                              ? Colors.black
                              : Colors.black54,
                          fontSize: 18.5,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 7.0),
                        height: 2.0,
                        width: size.width * 0.065,
                        color: _isSelected == index
                            ? kPrimaryColor
                            : Colors.transparent),
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  _isSelected = index;
                });
              },
            );
          }),
    );
  }
}
