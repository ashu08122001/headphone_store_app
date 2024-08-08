import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headphones_store/pages/homePageDetails.dart';
import 'HomeContent.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(color: Colors.white70, Icons.line_weight_sharp),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff171717),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(color: Colors.white70, Icons.notifications),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenHeight * 0.03,
                ),
                Container(
                  child: Text("Tune Yourself",
                      style: TextStyle(
                          fontSize: ScreenWidth * 0.08,
                          color: Colors.white70,
                          fontFamily: "Font1")),
                ),
                Container(
                  child: Text("Trending Products of Store",
                      style: TextStyle(
                          fontSize: ScreenWidth * 0.05,
                          color: Colors.white70,
                          fontFamily: "Font3")),
                ),
                SizedBox(
                  height: ScreenHeight * 0.02,
                ),
                Expanded(
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: homeContents.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          mainAxisExtent: 280),
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => pageDetail(
                                      homecontent: homeContents[index]),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff171717),
                                      Color(0xff000000)
                                    ]),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Image.asset(
                                  homeContents[index].image,
                                  height: ScreenHeight * 0.21,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: ScreenHeight * 0.015),
                                Text(
                                  homeContents[index].title,
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ScreenWidth * 0.039,
                                      fontFamily: "Font1"),
                                ),
                                SizedBox(
                                  height: ScreenHeight * 0.01,
                                ),
                                Text(
                                  homeContents[index].descrption,
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontFamily: "Font3",
                                      fontSize: ScreenWidth * 0.035),
                                ),
                                SizedBox(
                                  height: ScreenHeight * 0.02,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        homeContents[index].price,
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontFamily: "Font2",
                                            fontSize: ScreenWidth * 0.05),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: ScreenHeight * 0.03,
                                        width: ScreenWidth * 0.12,
                                        decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xffFFEA61),
                                                  Color(0xffFFD400),
                                                ]),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                            child: Text(
                                          "Buy",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: ScreenWidth * 0.03,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
