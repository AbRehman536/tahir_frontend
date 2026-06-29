import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ///Slider
  double sliderValue = 20;
  ///Drop Down
  List<String> genderList = [
    "Male", "Female", "Others"
  ];
  String? selectedGender;
  ///Cupertino Switch
  bool isSwitched = false;
  ///Carousel Slider
  int selectedIndex = 0;
  List<String> images = [
    "assets/images/car1.png",
    "assets/images/car2.jpg",
    "assets/images/car3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          CarouselSlider(
              items: images.map((val){
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(val),
                      fit: BoxFit.cover
                    )
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                height: 200,
                viewportFraction: 0.8,
                enlargeCenterPage: true,
                onPageChanged: (index, reason){
                  setState(() {
                    selectedIndex = index;
                  });
                }
              )),
          Card(
            color: isSwitched ? Colors.blue : Colors.redAccent,
            child: ListTile(
              leading: Icon(isSwitched ? Icons.wifi : Icons.wifi_1_bar),
              title: Text("WIFI"),
              subtitle: Text(isSwitched ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
                activeColor: Colors.black,
                  thumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey,
                  inactiveThumbColor: Colors.green,
                  value: isSwitched,
                  onChanged: (val){
                    setState(() {
                      isSwitched = val;
                    });
                  }),
            ),
          ),
          DropdownButton(
            hint: Text("Select Gender"),
              value: selectedGender,
              items: genderList.map((genders){
                return DropdownMenuItem(
                  value: genders,
                    child: Text(genders.toString()));
              }).toList(),
              onChanged: (value){
                setState(() {
                  selectedGender = value;
                });
              }),
          Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: sliderValue.round().toString(),
              onChanged: (value){
                setState(() {
                  sliderValue = value;
                });
              }),
          Pinput(
            length: 6,
            showCursor: true,
            onCompleted: (value){
              print(value);
            },
            defaultPinTheme: PinTheme(
              height: 50,
              textStyle: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
               color: Colors.red
              ),
              width: 50,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              )
            ),
          )
        ],
      ),
    );
  }
}
