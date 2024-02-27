import "package:flutter/material.dart";
import "package:gomoon/widgets/custom_dropdown_button.dart";

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
            children: [Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _bookRideWidget()
              ],
            ), Align(child: _astroImageWidget(),alignment: Alignment.centerRight,)],
          )
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return Container(
        child: const Text('#GoMoon',
            style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.w800)));
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropdownWidget() {
    const List<String> _items = ['James Webb Station', 'Preneur Station'];
    return CustomDropDownButtonClass(
      values: _items,
      width: _deviceWidth,
    );
  }

  Widget _travelersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonClass(
          values: const ['1', '2', '3', '4'],
          width: _deviceWidth * 0.45,
        ),
    CustomDropDownButtonClass(
    values:const ['Economy','Business','First','Private'],
    width: _deviceWidth * 0.40,
    )],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdownWidget(),
          _travelersInformationWidget(),
          _rideButton()
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom:_deviceHeight * 0.01 ) ,
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text("Book Ride",style: TextStyle(color: Colors.black),)
      )
    );
  }
}
