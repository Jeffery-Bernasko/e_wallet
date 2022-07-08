import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({ Key? key }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final _codeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Method for verification of OTP code
  holdUser(String code) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final prefs = await _prefs;
    final test = prefs.getString("number");

    if(code == test){
      print("Code is the same");
    }

    print("SignUp was Succeful");
    // Come back to this later !!
   // Navigator.pushNamed(context, AddName.routename);
  }

  nextScreen(){
    //Come back to this one too
    // Navigator.pushNamed(context, AddName.routeName);
  }
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
                //  color: themeColor,
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
                          Form(
                            key: _formKey,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width - 80,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: TextFormField(
                                      controller: _codeController,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        hintText: "Verication Code",
                                        hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(0.2),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(width: 2, color: Colors.transparent),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(width: 2, color: Colors.transparent),
                                        ),
                                        focusColor: Colors.white,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide:  BorderSide(width: 2, color: Colors.transparent),
                                       ),
                                       contentPadding: EdgeInsets.only(left: 20, right: 15),
                                       prefixIcon: Icon(Icons.message_outlined, color: Colors.blue,),
                                      ),
                                      validator: (value){
                                        if(value == null || value.isEmpty || int.parse(value) <= 59999999 || int.parse(value) >= 70000000){
                                          return "Please Enter Valid Code";
                                        }else{
                                          return null;
                                        }
                                      },
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),

                          Hero(
                            tag: "btn", //  Use same tag 
                            child: Card(
                              margin: EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                onTap: (){
                                  if(_formKey.currentState!.validate()){
                                    holdUser(_codeController.text);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Verify Number",
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        ),
                                    ],
                                  )
                                ),
                              ),
                              elevation: 7,
                              color: Colors.white,
                            )
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Have An Account?", style: TextStyle(color: Colors.black),),
                                TextButton(
                                  onPressed: (){},
                                  child: Text("Here!"),
                                )
                              ],
                            )
                          
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