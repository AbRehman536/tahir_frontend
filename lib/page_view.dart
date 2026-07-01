import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tahir_frontend/models/onBoardingModel.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/car1.png', title: 'Request Ride'),
    OnBoardingModel(image: 'assets/images/car2.jpg', title: 'Confirm Ride'),
    OnBoardingModel(image: 'assets/images/car3.jpg', title: 'Track Ride'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              controller: pageController,
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Image.asset(onBoardingList[index].image.toString(),width: 500,height: 400,),
                    Text(onBoardingList[index].title.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30
                    ),),
                ],);
              }, ),
          ),
          SmoothPageIndicator(
              controller: pageController,  // PageController
              count:  onBoardingList.length,
              effect:  WormEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          ElevatedButton(onPressed: (){}, child: Text("Get Started"))
        ],
      ),
    );
  }
}
