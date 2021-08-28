import 'package:ecommerce_ui_animation/model/bestSellingModel.dart';
import 'package:ecommerce_ui_animation/shop_page/bestSellingProductdts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Trendingpart extends StatelessWidget {
  const Trendingpart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 31),
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 1 / 2.8,
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Route route = MaterialPageRoute(
                  builder: (context) => Productdts(
                        image: data[index].prodectimage!,
                        productname: data[index].prodectname,
                        productdts: data[index].prodectdels,
                        productprice: data[index].prodectprice,
                        tags: data[index].tag,
                      ));
              Navigator.push(context, route);
            },
            // child:
            child: Card(
              elevation: 0,
              margin: EdgeInsets.only(right: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    width: 160.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        data[index].prodectimage!,
                      ),
                      fit: BoxFit.fitHeight,
                    )),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index].prodectname!,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.lato(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 130.0,
                          child: Text(
                            data[index].prodectdels!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.lato(
                              color: Colors.grey.withOpacity(0.9),
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                data[index].prodectprice!,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.lato(
                                  color: Colors.blue.withOpacity(0.8),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 35, right: 0),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 100),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: (Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.red,
                                    )),
                                  ),
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
        },
      ),
    );
  }
}
