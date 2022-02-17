import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int index = 0;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 2,
        vsync: this,
        animationDuration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI test",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Constants.primaryColor,
              ),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/icons/currency.png",
                width: 35,
                height: 35,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/icons/chatactive.png",
                width: 35,
                height: 35,
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    constraints:
                        const BoxConstraints(minWidth: 400, maxWidth: 600),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Furama Riverfront,\nSingapore",
                              style: Constants.titleStyle,
                            ),
                            InkWell(
                              child: Image.asset(
                                "assets/icons/nextred.png",
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "405 Havelock Road, Sigapore 169633",
                              style: Constants.subTitle,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                "assets/icons/currentlocation.png",
                                width: 35,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 230,
                  constraints:
                      const BoxConstraints(minWidth: 400, maxWidth: 600),
                  child: Stack(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(height: 200.0),
                        items: [1].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Image.asset(
                                    "assets/images/slider.jpeg",
                                    fit: BoxFit.fitWidth,
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 15,
                        child: Image.asset(
                          "assets/images/indicate_bg.png",
                          width: 120,
                        ),

                        // Transform(
                        //   transform: Matrix4.skewX(-0.3),
                        //   origin: const Offset(50.0, 0.0),
                        //   child: Container(
                        //     height: 60.0,
                        //     width: 200.0,
                        //     color: Constants.indicatorColor,
                        //   ),
                        // ),
                      ),
                      Positioned(
                        bottom: 18,
                        right: 23,
                        child: Text(
                          "See All 2/68",
                          style: Constants.subTitle
                              .merge(TextStyle(color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  constraints:
                      const BoxConstraints(minWidth: 400, maxWidth: 600),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/theme.png",
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Amenities",
                              style: Constants.normalStyle,
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/workout.png",
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Facilities",
                              style: Constants.normalStyle,
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/fnb.png",
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "F&B",
                              style: Constants.normalStyle,
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/kidsfamily.png",
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Kids/family",
                              style: Constants.normalStyle,
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/wellness.png",
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Wellness",
                              style: Constants.normalStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            "assets/images/tabbar_bg.png",
                          ))),
                  child: TabBar(
                    isScrollable: false,
                    onTap: (v) {
                      setState(() {
                        index = v;
                      });
                    },
                    controller: tabController,
                    indicator: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: index == 0
                                ? AssetImage('assets/images/tab_indicator.png')
                                : AssetImage(
                                    "assets/images/tab_indicator_t.png"))),
                    labelColor: Colors.black,
                    labelStyle: Constants.subTitle
                        .merge(const TextStyle(fontWeight: FontWeight.w700)),
                    unselectedLabelStyle: Constants.subTitle
                        .merge(const TextStyle(fontWeight: FontWeight.w700)),
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      // first tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Female',
                      ),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Male',
                        iconMargin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ],
                  ),
                ),
                Container(
                  constraints:
                      const BoxConstraints(minHeight: 400, maxHeight: 1500),
                  child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: tabController,
                      children: <Widget>[
                        Container(
                          constraints: const BoxConstraints(
                              minWidth: 400, maxWidth: 600),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/slider.jpeg",
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Deluxe Twin",
                                            style: Constants.subTitle.merge(
                                                TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Twin SingleBeds,Cable TV,Free Wifi",
                                            style: Constants.normalStyle,
                                          )
                                        ],
                                      ),
                                      MaterialButton(
                                        padding: EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Constants.primaryColor)),
                                        onPressed: () {},
                                        child: Text(
                                          "View Rates",
                                          style: Constants.normalStyle.merge(
                                              TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      Constants.primaryColor)),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Avg.Nightly/Room From",
                                        style: Constants.normalStyle.merge(
                                            TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                      Text.rich(TextSpan(
                                          text: "SGD",
                                          style: Constants.normalStyle.merge(
                                              TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700)),
                                          children: [
                                            TextSpan(
                                                text: "161.42",
                                                style: Constants.titleStyle
                                                    .merge(TextStyle(
                                                        fontSize: 21)))
                                          ]))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    height: 15,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/slider.jpeg",
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Deluxe Twin",
                                            style: Constants.subTitle.merge(
                                                const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Twin SingleBeds,Cable TV,Free Wifi",
                                            style: Constants.normalStyle,
                                          )
                                        ],
                                      ),
                                      MaterialButton(
                                        padding: EdgeInsets.all(15),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Constants.primaryColor)),
                                        onPressed: () {},
                                        child: Text(
                                          "View Rates",
                                          style: Constants.normalStyle.merge(
                                              TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      Constants.primaryColor)),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Avg.Nightly/Room From",
                                        style: Constants.normalStyle.merge(
                                            TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                      Text.rich(TextSpan(
                                          text: "SGD",
                                          style: Constants.normalStyle.merge(
                                              TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700)),
                                          children: [
                                            TextSpan(
                                                text: "161.42",
                                                style: Constants.titleStyle
                                                    .merge(TextStyle(
                                                        fontSize: 21)))
                                          ]))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    height: 15,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                        Container(
                          constraints: const BoxConstraints(
                              minWidth: 400, maxWidth: 600),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DottedBorder(
                                color: Constants.secondaryColor,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "YOUR E-VOUCHER RATE",
                                                    style: Constants.normalStyle
                                                        .merge(TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                  ),
                                                  Text(
                                                    "Mobile App Special Voucher",
                                                    style: Constants.titleStyle
                                                        .merge(TextStyle(
                                                            fontSize: 20)),
                                                  )
                                                ],
                                              ),
                                              InkWell(
                                                child: Image.asset(
                                                  "assets/icons/nextred.png",
                                                  width: 40,
                                                  height: 40,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                flex: 1,
                                                child: Column(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/fnb.png",
                                                      width: 40,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "inclusive of Breakfast",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          Constants.normalStyle,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Flexible(
                                                flex: 1,
                                                child: Column(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/discount.png",
                                                      width: 40,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "20% off in-Room Service",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          Constants.normalStyle,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Flexible(
                                                  flex: 1,
                                                  child: MaterialButton(
                                                    padding: EdgeInsets.all(15),
                                                    shape: RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width: 1,
                                                            color: Constants
                                                                .primaryColor)),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "View Rates",
                                                      style: Constants
                                                          .normalStyle
                                                          .merge(TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Constants
                                                                  .primaryColor)),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Divider(
                                            thickness: 1.5,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Avg. Nightly / Room From",
                                                    style: Constants.normalStyle
                                                        .merge(TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                  ),
                                                  Text(
                                                    "Subject to GST & Service charge",
                                                    style:
                                                        Constants.normalStyle,
                                                  )
                                                ],
                                              ),
                                              Text.rich(TextSpan(
                                                  text: "SGD",
                                                  style: Constants.normalStyle
                                                      .merge(TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                  children: [
                                                    TextSpan(
                                                        text: "161.42",
                                                        style: Constants
                                                            .titleStyle
                                                            .merge(TextStyle(
                                                                fontSize: 21)))
                                                  ]))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: double.infinity,
                                      color: Colors.yellow,
                                      child: Center(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.ac_unit,
                                              size: 20,
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "MEMBER DEALS",
                                              style: Constants.normalStyle
                                                  .merge(TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DottedBorder(
                                color: Constants.secondaryColor,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Weekend Staycation",
                                            style: Constants.titleStyle
                                                .merge(TextStyle(fontSize: 20)),
                                          ),
                                          InkWell(
                                            child: Image.asset(
                                              "assets/icons/nextred.png",
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/fnb.png",
                                                  width: 40,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "inclusive of Breakfast",
                                                  textAlign: TextAlign.center,
                                                  style: Constants.normalStyle,
                                                )
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/discount.png",
                                                  width: 40,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "20% off in-Room Service",
                                                  textAlign: TextAlign.center,
                                                  style: Constants.normalStyle,
                                                )
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                              flex: 1,
                                              child: MaterialButton(
                                                padding: EdgeInsets.all(15),
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Constants
                                                            .primaryColor)),
                                                onPressed: () {},
                                                child: Text(
                                                  "View Rates",
                                                  style: Constants.normalStyle
                                                      .merge(TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Constants
                                                              .primaryColor)),
                                                ),
                                              ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Divider(
                                        thickness: 1.5,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Avg. Nightly / Room From",
                                                style: Constants.normalStyle
                                                    .merge(TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700)),
                                              ),
                                              Text(
                                                "Subject to GST & Service charge",
                                                style: Constants.normalStyle,
                                              )
                                            ],
                                          ),
                                          Text.rich(TextSpan(
                                              text: "SGD",
                                              style: Constants.normalStyle
                                                  .merge(TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              children: [
                                                TextSpan(
                                                    text: "161.42",
                                                    style: Constants.titleStyle
                                                        .merge(TextStyle(
                                                            fontSize: 21)))
                                              ]))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
