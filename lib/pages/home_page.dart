import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: _deviceHeight,
        width: _deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _pageTitle(),
            _destinationDropDown(),
            _travelersInformationWidget(),
          ],
        ),
      ),
    ));
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropDown() {
    List<String> items = ["International Space Station", "Moon"];
    return CustomDropDownButton(values: items, width: _deviceWidth);
  }
  
  Widget _travelersInformationWidget(){
    return CustomDropDownButton(
        values: const ["1","2","3","4"],
        width: _deviceWidth * 0.45);
  }
}
