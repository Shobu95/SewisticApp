import 'package:flutter/material.dart';
import 'package:sewistic_app/screens/core/core.dart';
import 'package:sewistic_app/screens/intro/intro_slider/slide_tile.dart';

class IntroSlider extends StatefulWidget {
  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  int slideIndex = 0;
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: SlideTile.createSlides(),
          ),
        ),
        bottomSheet: slideIndex != 2 ? _sliderIndicator() : _getStartedButton(),
      ),
    );
  }

  Widget _sliderIndicator() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              controller.animateToPage(
                2,
                duration: Duration(milliseconds: 400),
                curve: Curves.linear,
              );
            },
            splashColor: Colors.pink[500],
            child: Text(
              "SKIP",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  i == slideIndex
                      ? _pageIndicatorDot(true)
                      : _pageIndicatorDot(false),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              controller.animateToPage(slideIndex + 1,
                  duration: Duration(milliseconds: 500), curve: Curves.linear);
            },
            splashColor: Colors.pink[500],
            child: Text(
              "NEXT",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pageIndicatorDot(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Theme.of(context).primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget _getStartedButton() {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => CoreScreen()));
      },
      child: Container(
        height: 60,
        color: Theme.of(context).primaryColor,
        alignment: Alignment.center,
        child: Text(
          "GET STARTED NOW",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
