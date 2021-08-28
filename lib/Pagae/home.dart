import 'package:ecommerce_ui_animation/homeWidget/bestselling.dart';
import 'package:ecommerce_ui_animation/homeWidget/pageviewindicator.dart';
import 'package:ecommerce_ui_animation/homeWidget/trending.dart';
import 'package:ecommerce_ui_animation/model/pageviewmodel.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(color: Colors.blue.withOpacity(0.1)),
      ),
      backgroundColor: Colors.blue.withOpacity(0.1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              top: 15,
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Builder(
                          builder: (context) => IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(
                              Icons.menu_sharp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 27,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/profileimage.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 31, right: 10),
                  height: MediaQuery.of(context).size.height * 1 / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          blurRadius: 12,
                          offset: Offset(2, 3)),
                    ],
                  ),
                  child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        _selectindex = index;
                      });
                    },
                    itemCount: contents.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 15, left: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            'COLLECTION',
                                            style: GoogleFonts.lato(
                                              color:
                                                  Colors.grey.withOpacity(0.8),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            'New',
                                            style: GoogleFonts.lato(
                                              color:
                                                  Colors.blue.withOpacity(0.8),
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            contents[index].productname!,
                                            style: GoogleFonts.lato(
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            contents[index].productmata!,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.lato(
                                              color:
                                                  Colors.grey.withOpacity(0.8),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Shop Now',
                                            style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 10, right: 10),
                                          height: 3,
                                          width: 70,
                                          color: Colors.blue.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 150,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                          contents[index].productimage!),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ...List.generate(
                                    contents.length,
                                    (index) => Viewpageindicator(
                                      isActied:
                                          _selectindex == index ? true : false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 31),
                  child: Text(
                    'BEST SELLING',
                    style: GoogleFonts.lato(
                      color: Colors.black26.withOpacity(0.8),
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //Best Selling part
                BastSellingpart(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 31),
                  child: Text(
                    'TRENDING',
                    style: GoogleFonts.lato(
                      color: Colors.black26.withOpacity(0.8),
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //Trending part
                Trendingpart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
