import 'package:ecommerce_ui_animation/model/bestSellingModel.dart';
import 'package:ecommerce_ui_animation/shop_page/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Productdts extends StatefulWidget {
  // final ShopcardModel;
  final String? image;
  final String? productname;
  final String? productprice;
  final String? productdts;
  final String? tags;
  static const String path = 'Productdts';
  const Productdts({
    Key? key,
    this.image,
    this.productname,
    this.productprice,
    this.productdts,
    this.tags,
  }) : super(key: key);

  @override
  _ProductdtsState createState() => _ProductdtsState();
}

class _ProductdtsState extends State<Productdts> {
  // int _Counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _Counter++;
  //   });
  // }

  // int _remove = 0;
  // void removeProduct() {
  //   setState(() {
  //     _remove--;
  //   });
  // }

  int selecetedImage = 0;
  bool _isseved = false;
  List<Color> productcolor = [
    Colors.red,
    Colors.blueGrey,
    Colors.green,
    Colors.orange,
    Colors.cyan,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        child: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cartpage()));
          },
          label: Container(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                Icon(Icons.shopping_cart),
                Text('ADD TO CART'),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            color: Colors.blue.withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (_isseved == false) {
                            setState(() {
                              _isseved = true;
                            });
                          } else if (_isseved == true) {
                            setState(() {
                              _isseved = false;
                            });
                          }
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: _isseved == false ? Colors.grey : Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Hero(
                  tag: widget.tags!,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      widget.image!,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            data.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selecetedImage = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 7, top: 25),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: selecetedImage == index
                                          ? Colors.blue
                                          : Colors.transparent,
                                      width: 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.2),
                                      blurRadius: 5,
                                      offset: Offset(2, 5),
                                    ),
                                  ],
                                ),
                                child: Image.asset(data[index].prodectimage!),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, right: 180),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.productname!,
                              style: GoogleFonts.lato(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.productprice!,
                              style: GoogleFonts.lato(
                                color: Colors.blue.withOpacity(0.8),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 31, right: 8, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Color:',
                              style: GoogleFonts.lato(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Quantity:',
                              style: GoogleFonts.lato(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 31, top: 8, right: 8),
                        child: Row(
                          children: [
                            ...List.generate(
                              productcolor.length,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selecetedImage = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color: selecetedImage == index
                                            ? Colors.white
                                            : Colors.transparent),
                                    borderRadius: BorderRadius.circular(50),
                                    color: productcolor[index],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 1 / 6,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '1',
                                    style: GoogleFonts.lato(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20, left: 31, right: 8, bottom: 55),
                        child: Text(
                          widget.productdts!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 30,
                          style: GoogleFonts.lato(
                              color: Colors.black54, fontSize: 15, height: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
