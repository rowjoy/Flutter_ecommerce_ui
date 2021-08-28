import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.blue.withOpacity(0.2),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 17,
                        )),
                    Text(
                      'CART',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    PopupMenuButton(
                      color: Colors.blue.withOpacity(0.3),
                      icon: Icon(Icons.more_horiz),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Remove'),
                        ),
                        PopupMenuItem(
                          child: Text('add'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 1 / 1.3,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 28,
                        right: 8,
                      ),
                      child: Card(
                        child: Container(
                          height: 140,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AspectRatio(
                                aspectRatio: 1 / 1.5,
                                child: Image.asset('images/pro2.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Arrivals oll',
                                      style: GoogleFonts.lato(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    Text(
                                      'Quality :1',
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      'Color : red',
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(Icons.delete_forever),
                                          Text('Remove'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 100),
                                child: Text(
                                  '\$1200',
                                  style: GoogleFonts.lato(
                                    color: Colors.blue,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40, top: 30),
                          child: Column(
                            children: [
                              Text(
                                'Total price & all items',
                                style: GoogleFonts.lato(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '\$4800',
                                style: GoogleFonts.lato(
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(
                                'Order confirm',
                                style: GoogleFonts.lato(
                                  color: Colors.black87,
                                ),
                              ),
                              content: Text(
                                'Thanks',
                                style: GoogleFonts.lato(
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Text('BOY NOW'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
