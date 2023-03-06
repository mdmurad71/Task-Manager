import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  Map<String, String> FormValues = {
    "email": "",
    "password": ""

  };


  InputOnChange(key, Textvalue) {
    setState(() {
      FormValues.update(key, (value) => Textvalue);
    });
  }

  FormOnSubmit() async{

    // await  alert('hello')

    // await ProductCreateRequest(FormValues);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

        children: [
          Container(

              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Log in", style: Head1Text(textColor)),
                  SizedBox(height: 2,),
                  Text("Please log in here", style: Head6Text(textColor)),
                  SizedBox(height: 20,),
                  TextFormField(onChanged: (Textvalue) {
                    InputOnChange("Email", Textvalue);
                  }, decoration: AppInputStyle('Email',)),

                  SizedBox(height: 20,),

                  TextFormField(onChanged: (Textvalue) {
                    InputOnChange("Password", Textvalue);
                  },
                      decoration: AppInputStyle('Password ',)),


                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(

                      style: AppButtonStyle(),
                      child: Text("Log In"),
                      onPressed: () {
                        FormOnSubmit();
                      },
                    ),
                  )

                ],


            )),


        ],
      ),
    );
  }
}
