import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({ Key? key }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final _codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Color themeColor = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: themeColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: themeColor
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: themeColor,
                  gradient: LinearGradient(
                    end: Alignment.topRight,
                    begin: Alignment.bottomLeft,
                    colors: [themeColor, themeColor.withOpacity(0.66), themeColor.withOpacity(0)]
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: Text("Let's Know It's You",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text("Enter the OTP sent to your number.",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7), 
                              fontSize: 16,
                              fontWeight: FontWeight.w300
                              ),
                            ),
                          ),

                          // Continue Design From Here(Delete Comment later..lol)
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}