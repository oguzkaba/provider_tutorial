import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

class Page3View extends StatelessWidget {
  const Page3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          _buildTopWidget(_size),
          Positioned(
            left: _size.width * .01,
            top: _size.height * .18,
            child: Container(
              width: _size.width * .98,
              height: _size.height * .12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: spaceCadet,
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Column _buildTopWidget(Size _size) {
    return Column(
      children: [
        Container(
          height: _size.height * .24,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[paradisePink, portlandOrange])),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                lowVPadding,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(logo, width: 80),
                    Row(children: const [
                      Icon(Icons.person_outline_sharp, color: white),
                      lowHPadding,
                      Icon(Icons.add_alert_outlined, color: white),
                    ])
                  ],
                ),
                lowVPadding,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on_outlined,
                        color: white, size: 20),
                    lowHPadding,
                    const Text("Maltepe Piazza ",
                        style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Text("(İstanbul)",
                        style: TextStyle(
                            color: white.withOpacity(.7),
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                    const Spacer(),
                    const Icon(Icons.keyboard_arrow_down_rounded,
                        color: white, size: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: _size.width,
          height: _size.height * .1,
          color: white,
        ),
        Container(
          height: _size.height * .5,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[paradisePink, portlandOrange])),
        ),
        Container(
          width: _size.width,
          height: _size.height * .5,
          color: black,
        ),
        Container(
          width: _size.width,
          height: _size.height * .5,
          color: paradisePink,
        ),
        Container(
          width: _size.width,
          height: _size.height * .5,
          color: white,
        ),
        Container(
          width: _size.width,
          height: _size.height * .5,
          color: middleGrey,
        ),
        Container(
          width: _size.width,
          height: _size.height * .3,
          color: white,
        ),
        Container(
          width: _size.width,
          height: _size.height * .5,
          color: black,
        ),
        Container(
          width: _size.width,
          height: _size.height * .2,
          color: white,
        ),
      ],
    );
  }
}
