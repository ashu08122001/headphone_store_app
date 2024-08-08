import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headphones_store/Login%20and%20singup/login.dart';

import 'OnboardContent.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int CurrentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: PageView.builder(
            controller: _controller,
            itemCount: contents.length,
            onPageChanged: (int index) {
              setState(() {
                CurrentIndex = index;
              });
            },
            itemBuilder: (_, i) {
              return Container(
                width: Screenwidth,
                height: ScreenHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(contents[i].image),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        contents[i].title,
                        style: TextStyle(
                            fontSize: Screenwidth * 0.06,
                            color: Colors.white,
                            fontFamily: "Font1"),
                      ),
                      SizedBox(
                        height: ScreenHeight*0.01,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        contents[i].description,
                        style: TextStyle(
                            fontSize: Screenwidth * 0.04,
                            color: Colors.white,
                            fontFamily: "Font3"),
                      ),
                      SizedBox(
                        height: ScreenHeight*0.01
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                            List.generate(
                                contents.length,
                                (index)=>buildDot(index,context),
                            ),

                        ),
                      ),
                      SizedBox(
                        height: ScreenHeight*0.02,
                      ),
                      GestureDetector(
                        onTap: (){
                         if(CurrentIndex==contents.length-1){
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login(),
                           ));
                         }
                         _controller.nextPage(
                             duration:Duration(milliseconds: 100),
                             curve: Curves.bounceIn);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(25)
                          ),
                          width: double.infinity,
                          height: ScreenHeight*0.06,

                          child: Center(
                              child: Text(
                            "Next",
                            style: TextStyle(
                                fontSize: Screenwidth * 0.06, color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));

  }
  Container buildDot(int index, BuildContext){
    return Container(
      height: 10,
      width: CurrentIndex==index?18:7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
        borderRadius: BorderRadius.circular(6)
      ),
    );
  }


}


