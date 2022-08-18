import 'package:flutter/material.dart';

import 'home.dart';

class lodding extends StatefulWidget {
  const lodding({Key? key}) : super(key: key);

  @override
  State<lodding> createState() => _loddingState();
}

class _loddingState extends State<lodding> {

  void initState() {
    super.initState();

    Lodding();
  }

  Lodding()
  async {
    
    await Future.delayed(Duration(seconds: 3),);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return homepage();
    },));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.deepPurpleAccent,
      body: SafeArea(
        child:Container(
          alignment: Alignment.center,
          color: Color(0xfff130f40),
          child:ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("page image/unnamed (1).webp",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            ),
          ),
        ) ,
      ),
    );
  }
}
