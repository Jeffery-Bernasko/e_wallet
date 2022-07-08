import 'package:e_wallet/constants/constants.dart';
import 'package:e_wallet/model/slider.dart';
import 'package:e_wallet/views/log_in.dart';
import 'package:e_wallet/views/sign_up.dart';
import 'package:e_wallet/widgets/slide_dots.dart';
import 'package:e_wallet/widgets/slide_items/slide_item.dart';
import 'package:flutter/material.dart';

class SliderLayoutView extends StatefulWidget {
  const SliderLayoutView({ Key? key }) : super(key: key);

  @override
  State<SliderLayoutView> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) => topSliderLayout();

   Widget topSliderLayout() => Container(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: sliderArrayList.length,
            itemBuilder: (context, i) => SlideItem(i),
            ),

             Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                        child: TextButton(
                          onPressed: (){
                            print('Go to Next Page');
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          },
                          child: Text(
                            Constants.NEXT,
                            style: TextStyle(
                          //  fontFamily: Constants.OPEN_SANS,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                        child: TextButton(
                          onPressed: (){
                            print("Skip Page");
                          },
                          child: Text(
                            Constants.SKIP,
                            style: TextStyle(
                          //  fontFamily: Constants.OPEN_SANS,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                          ),
                        )
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomCenter,
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < sliderArrayList.length; i++)
                            if (i == _currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    ),
                  ],
                )
        ],
      ),
    ),
   ); 
}