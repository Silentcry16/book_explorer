import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/subtitle.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: Dimensions.screenwidth,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _buildSlider(),
          const SizedBox(height: 20),
          _buildIndicator(),
        ],
      ),
    );
  }

  Widget _buildSlider() {
    return Expanded(
      child: PageView.builder(
          controller: _pageController,
          itemCount: 3,
          itemBuilder: (context, index) => Stack(
                children: [
                  Image.asset('assets/images/slider.png'),
                  const Positioned(
                      top: 14,
                      left: 8,
                      child: Subtitle(
                          text:
                              'Find out the best books to read\nwhen you don’t even know what \nto read!!!',
                          size: 14,
                          weight: FontWeight.bold,
                          color: Colors.white)),
                  Positioned(
                    left: 8,
                    bottom: 50,
                    child: Container(
                      alignment: Alignment.center,
                      width: 62,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: InkWell(
                        onTap: () {},
                        child: const Subtitle(
                            text: 'Explore',
                            size: 10,
                            weight: FontWeight.bold,
                            color: ConstColor.primary),
                      ),
                    ),
                  ),
                ],
              )),
    );
  }

  Widget _buildIndicator() {
    return SizedBox(
      height: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => _buildDot(index),
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: index == _currentPage ? 60 : 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: index == _currentPage
            ? ConstColor.primary
            : ConstColor.subtitleGrey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
