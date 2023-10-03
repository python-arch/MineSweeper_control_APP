import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roslibdart/roslibdart.dart';


class HomeController extends ChangeNotifier {
  int selectedBottomTab = 0;


  // final ros = Ros('your_ros_ws_url');
  //
  //
  // final rightArrowPublisher = ros.advertise('/right_arrow_topic', 'std_msgs/String');
  // final leftArrowPublisher = ros.advertise('/left_arrow_topic', 'std_msgs/String');
  // final forwardArrowPublisher = ros.advertise('/forward_arrow_topic', 'std_msgs/String');
  // final backwardArrowPublisher = ros.advertise('/backward_arrow_topic', 'std_msgs/String');



  void onBottomNavigationTabChange(int index) {
    selectedBottomTab = index;
    notifyListeners();
  }

  void updateRightArrow() {
    // Publish a message when the right arrow button is pressed
    // final message = StringMessage(data: 'Right Arrow Pressed');
    // rightArrowPublisher.publish(message);
    log(2);
  }

  void updateLeftArrow() {

    // Publish a message when the left arrow button is pressed
    // final message = StringMessage(data: 'Left Arrow Pressed');
    // leftArrowPublisher.publish(message);
  }

  void updateForwardArrow() {

    // // Publish a message when the forward arrow button is pressed
    // final message = StringMessage(data: 'Forward Arrow Pressed');
    // forwardArrowPublisher.publish(message);
  }

  void updateBackwardArrow() {
    // // Publish a message when the backward arrow button is pressed
    // final message = StringMessage(data: 'Backward Arrow Pressed');
    // backwardArrowPublisher.publish(message);
  }

  bool isCoolSelected = true;

  void updateCoolSelectedTab() {
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  bool isShowTyre = false;

  void showTyreController(int index) {
    // Once user on this tyre tab we want to show the tyre
    // let's define this method on bottom navigation
    if (selectedBottomTab != 2 && index == 2) {
      // Because we call this method before [onBottomNavigationTabChange]
      // as you can see we want to show those tyres a little bit later
      // Now  when the car on center after that we set isShowTyre = true
      Future.delayed(
        Duration(milliseconds: 400),
        () {
          isShowTyre = true;
          notifyListeners();
        },
      );
    } else {
      isShowTyre = false;
      notifyListeners();
    }
  }

  bool isShowTyreStatus = false;

  void tyreStatusController(int index) {
    if (selectedBottomTab != 2 && index == 2) {
      isShowTyreStatus = true;
      notifyListeners();
    } else {
      Future.delayed(Duration(milliseconds: 400), () {
        isShowTyreStatus = false;
        notifyListeners();
      });
    }
  }
}
