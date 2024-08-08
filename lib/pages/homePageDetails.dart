import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headphones_store/pages/Home.dart';
import 'package:headphones_store/pages/HomeContent.dart';
import 'HomeContent.dart';

class pageDetail extends StatefulWidget {
  final Homecontent homecontent ;

  const pageDetail({super.key,required this.homecontent}):assert(homecontent!=null);


  @override
  State<pageDetail> createState() => _pageDetailState();
}

class _pageDetailState extends State<pageDetail> {


  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: ScreenHeight,
        width: ScreenWidth,
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xff171717), Color(0xff000000)])),

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      color: Colors.white70,
                      size: ScreenHeight*0.03,
                      Icons.arrow_back_ios_new_outlined
                    ),
                  )
                ),
                Image.asset(widget.homecontent.image,
                height: ScreenHeight*0.45,
                  width: double.infinity,

                ),
                SizedBox(
                  height: ScreenHeight*0.03,
                ),
                Text(widget.homecontent.title,style: TextStyle(
                    color: Colors.white70,
                    fontSize: ScreenWidth * 0.06,
                    fontFamily: "Font1"),),
                SizedBox(
                  height: ScreenHeight*0.02,
                ),
                Text(widget.homecontent.description,style: TextStyle(
                    color: Colors.white70,
                    fontSize: ScreenWidth * 0.035,
                    fontFamily: "Font3"),),
                SizedBox(
                height: ScreenHeight*0.04,),

                Row(
                  children: [
                    Text(
                      widget.homecontent.price,
                      style: TextStyle(
                          color: Colors.white70,
                          fontFamily: "Font2",
                          fontSize: ScreenWidth * 0.09),
                    ),
                    const Spacer(),
                    Container(
                      height: ScreenHeight*0.057,
                      width: ScreenWidth*0.3,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffFFEA61),
                                Color(0xffFFD400),
                              ]
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:
                      Center(child: Text("Buy",style: TextStyle(color: Colors.black87,fontSize: ScreenWidth*0.045,fontWeight: FontWeight.bold),)),
                    ),
                    SizedBox(height: ScreenHeight*0.03,)
                  ],
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}
