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
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _bookARideWidget(),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: _astroWidget(),
            )
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
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children :[
        CustomDropDownButton(
          values: const ["1","2","3","4"],
          width: _deviceWidth * 0.45),
        CustomDropDownButton(
            values: const ["Economy","Business","First Class"],
            width: _deviceWidth * 0.40),
    ],
    );
  }

  Widget _bookARideWidget(){
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDown(),
          _travelersInformationWidget(),
          _rideButton()
        ],
      ),
    );
  }
  
  Widget _rideButton(){
    return Container(
      width: _deviceWidth,
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: MaterialButton(
        onPressed: (){},
        child: const Text("Book Ride", style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
