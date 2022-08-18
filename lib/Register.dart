import 'package:flutter/material.dart';

import 'home.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Color(0xfff130f40),

                child:Row(

                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return homepage();
                            },
                            ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Register",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
