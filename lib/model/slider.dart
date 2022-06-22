// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_wallet/constants/constants.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;


  Slider({
    required this.sliderImageUrl,
    required this.sliderHeading,
    required this.sliderSubHeading,
  });

  

}


final sliderArrayList = [
    Slider(
        sliderImageUrl: 'assets/images/exchange.jpg',
        sliderHeading: Constants.SLIDER_HEADING_1,
        sliderSubHeading: Constants.SLIDER_DESC),
    Slider(
        sliderImageUrl: 'assets/images/slider_2.png',
        sliderHeading: Constants.SLIDER_HEADING_2,
        sliderSubHeading: Constants.SLIDER_DESC),
    Slider(
        sliderImageUrl: 'assets/images/transfer.jpg',
        sliderHeading: Constants.SLIDER_HEADING_3,
        sliderSubHeading: Constants.SLIDER_DESC),
  ];