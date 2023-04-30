import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/widgets/title_text.dart';
import 'package:flutter/material.dart';

class DetailsListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
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
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(
                  text: 'Dust Jacket',
                  size: 20,
                  weight: FontWeight.w700,
                  color: ConstColor.secondary),
              const TitleText(
                  text: 'By Pisco Pirinto',
                  size: 12,
                  weight: FontWeight.w400,
                  color: Colors.black),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 150,
                height: 15,
                child: Row(
                  children: [
                    ...List.generate(
                        5,
                        (index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            )),
                    const TitleText(
                        text: '| 1500 Reader',
                        size: 12,
                        weight: FontWeight.w600,
                        color: Colors.black45)
                  ],
                ),
              )
            ],
          ),
          const Expanded(child: SizedBox.shrink()),
          const TitleText(
              text: '\$100',
              size: 20,
              weight: FontWeight.w700,
              color: ConstColor.primary),
        ],
      ),
    );
  }
}
