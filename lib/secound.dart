import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoststar/home.dart';
import 'package:side_sheet/side_sheet.dart';

class secound extends StatefulWidget {
  const secound({Key? key}) : super(key: key);

  @override
  State<secound> createState() => _secoundState();
}

class _secoundState extends State<secound> {
  var _controller = TextEditingController();
  List<String>page=[
    "page image/1.jpeg",
    "page image/2.jpeg",
    "page image/3.jpeg",
    "page image/4.jpeg",
    "page image/5.jpeg",
    "page image/6.jpeg",
    "page image/7.jpeg",
    "page image/8.jpeg",
    "page image/9.jpeg",
    "page image/10.jpeg",
    "page image/11.jpeg",
    "page image/12.jpeg",
    "page image/13.jpeg",
    "page image/14.jpeg",
    "page image/15.jpeg",
    "page image/16.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
          child:Column(
            children: [
              Container(
                height: 60,

                width: double.infinity,
                color: Colors.black,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
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
                    ),
                    Text("Latest Video",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                    IconButton(
                      onPressed: () {
                        SideSheet.right(

                            body:SafeArea(

                              child:TextField(
                                controller: _controller,
                                decoration:InputDecoration(
                                    hintText: "Sharch",
                                    filled: true,
                                    prefixIcon:Icon(
                                      Icons.search,
                                    ),
                                    suffixIcon: IconButton(onPressed: () {
                                      _controller.clear();
                                    }, icon: Icon(Icons.highlight_remove,))
                                ),

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
              Expanded(
                child: Container(

                  padding: EdgeInsets.all(5),
                  child: GridView.builder(
                    itemCount: page.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.6,
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      return GridTile(
                        child:InkWell(onTap: () {

                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            page[index],
                            fit:BoxFit.cover,
                          ),
                        ),
                        ),
                      );
                    },),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
