import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    )
                  ),

                   SizedBox(height: 20,),

                Text(
                  "Create an account, It's free ",
                  style: TextStyle(
                    fontSize: 15,
                    color:Colors.grey[700]
                ),
              ),
                ],
              ),

            Column(
              children: [
                inputField(
                  label: 'Username',
                  controller: name
                  
                ),

                inputField(
                  label: 'Email',
                  controller: email
                ),

                inputField(
                  label: "Password", 
                  obscureText: true,
                  controller: password
                ),
              ],
            ),

              ElevatedButton(
                onPressed: (){}, 
                child: Text(
                  "Sign Up"
                )
                ),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have an Account?"),
                //Later will change to Text Button
                Text("Login",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)
              ],
             )

             
            ],
          ),
          
        ),
      ),
    );
  }

  Widget inputField({label, obscureText = false, controller}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black87
            ),
          ),

          SizedBox(height: 5),

          TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Colors.grey
            ),

              ),
              border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey
                )
              )
          ),
        ),
        SizedBox(height: 10,)
      ],
      
      ),
    );
  }
}