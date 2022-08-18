import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoststar/home.dart';
import 'package:hoststar/secound.dart';
import 'package:side_sheet/side_sheet.dart';

import 'Register.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  var _controller = TextEditingController();
  var _controller1 = TextEditingController();
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
                      child: Text("Log in",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child:Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("page image/unnamed (1).webp",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xfff130f40),
                    borderRadius:BorderRadius.only(bottomLeft:Radius.circular(200)),
                  ),
                ),
            ),
            Expanded(
              flex: 1,
              child:ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(

                    margin: EdgeInsets.all(10),
                    child:Row(
                      children: [
                        Expanded(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(

                                child: TextField(
                                  controller: _controller,
                                  decoration:InputDecoration(
                                    hintText: "Sharch",
                                    filled: true,
                                    prefixIcon:Icon(
                                      Icons.mail,
                                    ),

                                  ),

                                ),
                              ),
                              Container(
                                height: 50,
                                margin: EdgeInsets.only(top: 20,bottom: 30),

                                child: TextField(
                                  controller: _controller1,
                                  decoration:InputDecoration(
                                    hintText: "Sharch",
                                    filled: true,
                                    prefixIcon:Icon(
                                      Icons.vpn_key_rounded,
                                    ),

                                  ),

                                ),
                              ),
                              Container(
                                child: SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: ElevatedButton(onPressed: () {

                                  }, child:Text("Submit"),),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 15),
                                child: SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: ElevatedButton(onPressed: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                                      return Register();
                                    },));

                                  }, child:Text("Register"),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
