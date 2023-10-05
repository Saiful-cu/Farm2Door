import 'package:farm2door/widget/custom_mystyle.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> productImage = [
    "assets/images/product1.png",
    "assets/images/mango.png"
  ];
  List<String> imageTitle = ["Foods", "Fish", "Sweets", "Vegetables"];
  List<String> image = [
    "assets/images/foods.png",
    "assets/images/Fish.png",
    "assets/images/Sweets.png",
    "assets/images/Vegitable.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF6F6F6),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 10),
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                    height: 25,
                    width: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Row(
                            children: [
                              Icon(
                                Icons.my_location,
                                color: Colors.black54,
                                size: 15,
                              ),
                              SizedBox(
                                  width:
                                      8), // Add some spacing between the icon and text
                              Text(
                                "Akran Bazar, Savar, Dhaka",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/User.svg', // Replace with the path to your SVG file
                          width: 32, // Set the width of the icon
                          height: 32, // Set the height of the icon
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.black54,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Search Product...",
                            style: CustomMyStyle(
                                15, Colors.grey, FontWeight.normal),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.png",
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "See All",
                        style: CustomMyStyle(
                            12,
                            const Color.fromARGB(255, 23, 135, 45),
                            FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: image.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 100,
                              width: 85,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(image[index]),
                                    fit: BoxFit.fill),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(220, 0, 0, 0),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 6, right: 6, top: 3, bottom: 3),
                                      child: Expanded(
                                          child: Text(
                                        imageTitle[index],
                                        style: CustomMyStyle(10, Colors.white,
                                            FontWeight.normal),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recommended",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "See All",
                        style: CustomMyStyle(
                            12,
                            const Color.fromARGB(255, 23, 135, 45),
                            FontWeight.normal),
                      ),
                    ],
                  ),
                  // Column(
                  //   mainAxisSize: MainAxisSize.max,
                  //   children: [
                  //     ClipRRect(
                  //       borderRadius: BorderRadius.circular(8),
                  //       child: Image.asset(
                  //         'assets/images/image-removebg-preview.png',
                  //         width: 170,
                  //         height: 100,
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                  //       child: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         crossAxisAlignment: CrossAxisAlignment.stretch,
                  //         children: [
                  //           Align(
                  //             alignment: AlignmentDirectional(-1.00, 0.00),
                  //             child: Text(
                  //               'Langra Mango (ল্যাংড়া আম)',
                  //               style: FlutterFlowTheme.of(context).bodyMedium.override(
                  //                 fontFamily: 'Readex Pro',
                  //                 fontSize: 12,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             ),
                  //           ),
                  //           Align(
                  //             alignment: AlignmentDirectional(1.00, 0.00),
                  //             child: Row(
                  //               mainAxisSize: MainAxisSize.max,
                  //               children: [
                  //                 ClipRRect(
                  //                   borderRadius: BorderRadius.circular(8),
                  //                   child: Image.asset(
                  //                     'assets/images/ic_round-star.png',
                  //                     width: 10,
                  //                     height: 10,
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  //                   child: Text(
                  //                     '4.5 (1101)   2.0K Sold',
                  //                     style: FlutterFlowTheme.of(context).bodyMedium.override(
                  //                       fontFamily: 'Poppins',
                  //                       fontSize: 10,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //           Align(
                  //             alignment: AlignmentDirectional(-1.00, 0.00),
                  //             child: Text(
                  //               'By Weight (min 5 kg)',
                  //               style: FlutterFlowTheme.of(context).bodyMedium.override(
                  //                 fontFamily: 'Poppins',
                  //                 fontSize: 10,
                  //               ),
                  //             ),
                  //           ),
                  //           Row(
                  //             mainAxisSize: MainAxisSize.max,
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Align(
                  //                 alignment: AlignmentDirectional(-1.00, 0.00),
                  //                 child: Text(
                  //                   '৳ 620/-',
                  //                   style: FlutterFlowTheme.of(context).bodyMedium,
                  //                 ),
                  //               ),
                  //               ClipRRect(
                  //                 borderRadius: BorderRadius.circular(8),
                  //                 child: Image.asset(
                  //                   'assets/images/Cart.png',
                  //                   width: 20,
                  //                   height: 20,
                  //                   fit: BoxFit.cover,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ].divide(SizedBox(height: 10)),
                  //       ),
                  //     ),
                  //   ],
                  // )
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/product1.png',
                          width: 170,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 10,
                              bottom: 10), // Add padding for spacing
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Langra Mango (ল্যাংড়া আম)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  '4.5 (1101)   2.0K Sold',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ]),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\৳ 620/-',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.add_shopping_cart)
                                ],
                              )
                            ],
                          ))
                    ],
                    // Adjust the height as needed
                  ),

                  // Product Details
                ])))));
  }
}
