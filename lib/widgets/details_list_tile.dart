import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/widgets/title_text.dart';
import 'package:flutter/material.dart';

class DetailsListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      // color: Colors.amber,
      width: 330,
      height: 77,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Image.asset('assets/images/profile.png'),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                  text: 'Dust Jacket',
                  size: 20,
                  weight: FontWeight.w700,
                  color: ConstColor.secondary),
              TitleText(
                  text: 'By Pisco Pirinto',
                  size: 12,
                  weight: FontWeight.w400,
                  color: Colors.black),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 150,
                height: 15,
                child: Row(
                  children: [
                    ...List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            )),
                    TitleText(
                        text: '| 1500 Reader',
                        size: 12,
                        weight: FontWeight.w600,
                        color: Colors.black45)
                  ],
                ),
              )
            ],
          ),
          Expanded(child: SizedBox.shrink()),
          Container(
              child: TitleText(
                  text: '\$100',
                  size: 20,
                  weight: FontWeight.w700,
                  color: ConstColor.primary)),
        ],
      ),
    );
  }
}
