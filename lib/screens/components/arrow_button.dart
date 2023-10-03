import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArrowButton extends StatelessWidget {
  final VoidCallback press;
  final int command;

  ArrowButton({
    Key? key,
    required this.press,
    required this.command,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String arrowAsset;

    switch (command) {
      case 1:
        arrowAsset = "assets/icons/right_arrow.svg";
        break;
      case 2:
        arrowAsset = "assets/icons/left_arrow.svg";
        break;
      case 3:
        arrowAsset = "assets/icons/backward_arrow.svg";
        break;
      case 4:
        arrowAsset = "assets/icons/forward_arrow.svg";
        break;
      default:
        arrowAsset = ""; // Default to an empty asset if the command is not recognized
        break;
    }

    return GestureDetector(
      onTap: press,
      child: SvgPicture.asset(
        arrowAsset,
      ),
    );
  }
}
