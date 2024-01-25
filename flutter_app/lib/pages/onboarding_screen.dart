import 'package:flutter/material.dart';
import 'package:flutter_app/components/intro_screens/intro_page1.dart';
import 'package:flutter_app/components/intro_screens/intro_page2.dart';
import 'package:flutter_app/components/intro_screens/intro_page3.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoadingScreen extends StatefulWidget {
  const OnBoadingScreen({Key? key}) : super(key: key);

  @override
  _OnBoadingScreenState createState() => _OnBoadingScreenState();
}

class _OnBoadingScreenState extends State<OnBoadingScreen> {
  //controller to know what page whe are one
  PageController _controller = PageController();

  //keep track if we are in the last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),

        //dot indicator
        Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip button
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text("Skip"),
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                //next button
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }));
                        },
                        child: const Text("Done"),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text("Next"),
                      ),
              ],
            ))
      ],
    ));
  }
}
