import 'package:farm2door/appconst/app_const.dart';
import 'package:farm2door/widget/custom_mystyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  LinearGradient _color = LinearGradient(colors: [
    Color(0xff31CD6F),
    Color(0xff166235),
  ]);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 8,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back)),
                          SizedBox(
                            width: width * .20,
                          ),
                          Text(
                            "Select Payment Method",
                            style: CustomMyStyle(14, lightBlach, FontWeight.w600),
                          ),
                        ],
                      ),
                      
                      Container(
                          height: height * .05,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Recommended methods",
                              style:
                                  CustomMyStyle(14, lightBlach, FontWeight.w600),
                            ),
                          )),
                          SizedBox(height: height * .02,),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/payment/ccredit-card.svg"),
                                SizedBox(
                                  width: width * .06,
                                ),
                                Text(
                                  "Credit/Debit Card",
                                  style: CustomMyStyle(
                                      12, lightBlach, FontWeight.w600),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/payment/visa.svg"),
                                SizedBox(
                                  width: width * .02,
                                ),
                                SvgPicture.asset("assets/payment/mastercard.svg"),
                                SizedBox(
                                  width: width * .02,
                                ),
                                SvgPicture.asset(
                                    "assets/payment/american-express.svg"),
                
                                //  IconButton(onPressed: (){
                
                                // }, icon: Icon(Icons.arrow_forward_ios)),
                              ],
                            ),
                          ],
                        ),
                      ),
                       SizedBox(height: height * .02,),
                      Container(
                          height: height * .22,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Saved method",
                                  style: CustomMyStyle(
                                      14, lightBlach, FontWeight.w600),
                                ),
                                SizedBox(height: height * .02,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffEFFFEA),
                                    boxShadow: [
                                      BoxShadow(color: Colors.grey),
                                      
                                    ],
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                  height: height * .10,
                                  
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        activeColor: primaryColor,
                                        side: BorderSide(color: primaryColor),
                                        // checkColor: Colors.white,
                                        // fillColor: MaterialStateProperty.resolveWith(getColor),
                                        value: false,
                                        shape: CircleBorder(),
                
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                      ),
                                      Image.asset(
                                    "assets/payment/image 21.png"),
                                    SizedBox(width: width * .03,),
                                     Text(
                                  "016*******252",
                                  style: CustomMyStyle(
                                      12, lightBlach, FontWeight.w500),
                                ),
                
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * .01,),
                                 Text(
                                  "Payment methods",
                                  style: CustomMyStyle(
                                      14, lightBlach, FontWeight.w600),
                                ),
                              ],
                            ),
                          )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Row(
                                  children: [
                                     Image.asset(
                                      "assets/payment/image 22.png"),
                                      SizedBox(width: width * 0.03,),
                                        Text(
                                    "Rocket",
                                    style: CustomMyStyle(
                                        12, lightBlach, FontWeight.w500),
                                  ),
                                  ],
                                 ),
                                  IconButton(onPressed: (){
                                              
                                }, icon: Icon(Icons.arrow_forward_ios)),
                          
                              ],
                            ),
                          ),
                          Divider(),
                           Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Row(
                                  children: [
                                     Image.asset(
                                      "assets/payment/image 23.png"),
                                      SizedBox(width: width * 0.03,),
                                        Text(
                                    "Bkash",
                                    style: CustomMyStyle(
                                        12, lightBlach, FontWeight.w500),
                                  ),
                                  ],
                                 ),
                                  IconButton(onPressed: (){
                                              
                                }, icon: Icon(Icons.arrow_forward_ios)),
                          
                              ],
                            ),
                          ),
                          Divider(),
                           Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Row(
                                  children: [
                                     Image.asset(
                                      "assets/payment/image 24.png"),
                                      SizedBox(width: width * 0.03,),
                                        Text(
                                    "DBBL Nexus Card",
                                    style: CustomMyStyle(
                                        12, lightBlach, FontWeight.w500),
                                  ),
                                  ],
                                 ),
                                  IconButton(onPressed: (){
                                              
                                }, icon: Icon(Icons.arrow_forward_ios)),
                          
                              ],
                            ),
                          ),
                          Divider(),
                           Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Row(
                                  children: [
                                     Image.asset(
                                      "assets/payment/image 25.png"),
                                      SizedBox(width: width * 0.03,),
                                        Text(
                                    "Cash On Delivery",
                                    style: CustomMyStyle(
                                        12, lightBlach, FontWeight.w500),
                                  ),
                                  ],
                                 ),
                                  IconButton(onPressed: (){
                                              
                                }, icon: Icon(Icons.arrow_forward_ios)),
                          
                              ],
                            ),
                          ),
                          Divider(),
                          
                
                
                    ],
                  ),
                ),
              )),
          Expanded(
              child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal ",
                        style: CustomMyStyle(11, wireFrim, FontWeight.w400),
                      ),
                      Text(
                        "৳ 680",
                        style: CustomMyStyle(11, wireFrim, FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: height * .015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total ",
                        style: CustomMyStyle(13, lightBlach, FontWeight.w500),
                      ),
                      Text(
                        "৳ 680",
                        style: CustomMyStyle(11, lightBlach, FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    gradient: _color,
                  ),
                  child: Center(
                    child: Text(
                      "Pay Now",
                      style: CustomMyStyle(14, Colors.white, FontWeight.w700),
                    ),
                  ))),
        ],
      )),
    );
  }
}
