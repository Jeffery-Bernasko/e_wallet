import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Column(
                children: [
                   Text(
                "Welcome Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),

              SizedBox(height: 20,),

              Text(
                "Enter your email address to get started.",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              )
                ],
              ),

              Column(
                children: [

                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      borderSide: BorderSide(
                        color: Colors.grey
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  TextFormField(
                    controller: _password,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      borderSide: BorderSide(
                        color: Colors.grey
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("I have forgotten password"),
                //Later will change to Text Button
                  Text("Login",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)
              ],
             ),

                  ElevatedButton(
                    child: Text(
                      "Login"
                    ),
                    onPressed: (){},
                  )

                ],
              )
            ],
          ),
          
        ),
      ),
    );
  }
}