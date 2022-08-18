import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoststar/login.dart';
import 'package:hoststar/secound.dart';
import 'package:side_sheet/side_sheet.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Color> l = [
    Colors.brown,
    Colors.orange,
    Colors.deepOrange,
    Colors.red,
    Colors.brown,
  ];
  var _controller = TextEditingController();
  CarouselController buttonCarouselController = CarouselController();
  List<String> image2 = [
    "slider/17.webp",
    "slider/18.webp",
    "slider/19.webp",
    "slider/20.webp",
    "slider/21.webp",
    "slider/22.webp",
    "slider/23.webp",
    "slider/24.webp",
    "slider/25.webp",
    "slider/26.webp",
    "slider/27.webp",
    "slider/28.webp",
    "slider/29.webp",
    "slider/30.webp",
  ];
  List<String> image = [
    "images/1.webp",
    "images/2.webp",
    "images/3.webp",
    "images/4.webp",
    "images/5.webp",
    "images/6.webp",
  ];
  List<String> image3 = [
    "image3/7.webp",
    "image3/8.webp",
    "image3/9.webp",
    "image3/10.webp",
    "image3/11.webp",
    "image3/12.webp",
  ];
  List<String> image4 = [
    "image4/13.webp",
    "image4/14.webp",
    "image4/15.webp",
    "image4/16.webp",
    "image4/17.webp",
    "image4/18.webp",
  ];
  List<String> image5 = [
    "image5/19.webp",
    "image5/20.webp",
    "image5/21.webp",
    "image5/22.webp",
    "image5/23.webp",
    "image5/24.webp",
  ];
  List<String> image6 = [
    "image6/25.webp",
    "image6/26.webp",
    "image6/27.webp",
    "image6/28.webp",
    "image6/29.webp",
    "image6/30.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.black,
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        SideSheet.left(
                            body: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return login();
                                        },
                                      ));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: ListView(
                                        children: [
                                          ListTile(
                                            leading: Image.asset(
                                              "slider/login-icon-png-19.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                            title: Text("Login"),
                                            subtitle:
                                                Text("For a Batter Experience"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Container(
                                    child: ListView(
                                      children: [
                                        ListTile(
                                          leading: Icon(Icons.home),
                                          title: Text("Home"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.home),
                                          title: Text("Home"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.home),
                                          title: Text("Home"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.home),
                                          title: Text("Home"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.home),
                                          title: Text("Home"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.home),
                                          title: Text("Home"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            context: context);
                      },
                      icon: Icon(
                        Icons.view_headline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Image.asset(
                      "images/disney-hotstar-logo-dark.webp",
                      fit: BoxFit.fill,
                    ),
                    IconButton(
                      onPressed: () {
                        SideSheet.right(
                            body: SafeArea(
                              child: TextField(
                                controller: _controller,
                                decoration: InputDecoration(
                                    hintText: "Sharch",
                                    filled: true,
                                    prefixIcon: Icon(
                                      Icons.search,
                                    ),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          _controller.clear();
                                        },
                                        icon: Icon(Icons.highlight_remove))),
                              ),
                            ),
                            context: context);
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  Container(
                    color: Colors.black,
                    child: CarouselSlider.builder(
                      itemCount:image2.length ,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          child: Image.asset(image2[index],fit: BoxFit.fitWidth,),
                        );
                    },

                      carouselController: buttonCarouselController,
                      options: CarouselOptions(
                        height: 200,

                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.9,
                        aspectRatio: 2.0,
                        initialPage: 2,

                      ),
                    ),

                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "Latest Video",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return secound();
                                },
                              ));
                            },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.white,
                            alignment: Alignment.centerRight,
                            iconSize: 20,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: l.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.5,
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                  )),
              Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.black,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "Latest video",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return secound();
                                },
                              ));
                            },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.white,
                            alignment: Alignment.centerRight,
                            iconSize: 20,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: l.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            image3[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.5,
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                  )),
              Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.black,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "Latest Video",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return secound();
                                },
                              ));
                            },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.white,
                            alignment: Alignment.centerRight,
                            iconSize: 20,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: l.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            image4[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.5,
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                  )),
              Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.black,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "Latest Video",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return secound();
                                },
                              ));
                            },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.white,
                            alignment: Alignment.centerRight,
                            iconSize: 20,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black,
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    itemCount: l.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            image5[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.5,
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
