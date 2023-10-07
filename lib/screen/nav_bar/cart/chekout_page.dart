import 'package:farm2door/screen/nav_bar/cart/payment_screen.dart';
import 'package:farm2door/widget/custom_mystyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
 
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
      var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                     children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back)),
                        SizedBox(width: width*.300,),
                        Text("Checkout", style: CustomMyStyle(14, Color(0xff2F2F2F), FontWeight.w600),),
                     ],
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                         
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping To: Jane Doe", style: CustomMyStyle(14, Colors.black, FontWeight.w600),),
                            SizedBox(
                              height: height * .01,
                            ),
                            Text("Fazlur Rahman Hall, Khagan, Savar,Dhaka.\n01346556152", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w400),),
                           
                         
                          ],
                    
                        ),
                        IconButton(onPressed: (){
                          //write your edit button function 
                        }, icon: Icon(Icons.edit_outlined))
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                     
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Bill to the same address", style: CustomMyStyle(14, Colors.black, FontWeight.w600),),
                       IconButton(onPressed: (){
                          //write your edit button function 
                        }, icon: Icon(Icons.edit_outlined))
                    
                    ],),
                     Divider(
                      color: Colors.grey.shade300,
                      thickness: 3,
                    ),
                    Text("Delivery ", style: CustomMyStyle(14, Colors.black, FontWeight.w600),),
                    SizedBox(height: height *.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height *.07,
                          width: width*.400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Color(0xff38799E)),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Fastest Delivery | ৳ 72 ", style: CustomMyStyle(12, Color(0xff38799E), FontWeight.w700),),
                                Text("Receive by  Tomorrow 29 Aug ", style: CustomMyStyle(10, Color(0xff2F2F2F), FontWeight.w400),),
                              ],
                            ),
                          ),
                        ),
                         Container(
                          height: height *.07,
                          width: width*.400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Color(0xff38799E)),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Standard Delivery | ৳ 52  ", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w600),),
                                Text("Receive by  Tomorrow 29 Aug", style: CustomMyStyle(10, Color(0xff2F2F2F), FontWeight.w400),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                     Divider(
                      color: Colors.grey.shade300,
                      thickness: 3,
                    ),
                    Text("Promotions", style: CustomMyStyle(14, Color(0xffFFA95A), FontWeight.w600),),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                            SvgPicture.asset("assets/icons/Vector.svg"),
                            SizedBox(width: width * .08,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Shop Voucher", style: CustomMyStyle(12, Colors.black, FontWeight.w600),),
                                SizedBox(height: height * .010,),
                                Text("No Applicable Voucher", style: CustomMyStyle(10, Color(0xff7A7A7A), FontWeight.w400),),
                    
                              ],
                            ),
                             SizedBox(width: width * .40,),
                            IconButton(onPressed: (){
                    
                            }, icon: Icon(Icons.arrow_forward_ios)),
                    
                        ],
                      ),
                    ),
                    Divider(),
                     Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                            SvgPicture.asset("assets/icons/ic_discount.svg"),
                            SizedBox(width: width * .08,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Promo code Applied", style: CustomMyStyle(12, Colors.black, FontWeight.w600),),
                                SizedBox(height: height * .010,),
                                Row(
                                  children: [
                                    Text("PAYOUT120 ", style: CustomMyStyle(10, Color(0xff31CD6F), FontWeight.w400),),
                                    Text("৳ 85 coupon savings", style: CustomMyStyle(10, Color(0xff7A7A7A), FontWeight.w400),),
                                  ],
                                ),
                    
                              ],
                            ),
                             SizedBox(width: width * .27,),
                            IconButton(onPressed: (){
                    
                            }, icon: Icon(Icons.arrow_forward_ios)),
                    
                        ],
                      ),
                    ),
                     Divider(
                      color: Colors.grey.shade300,
                      thickness: 3,
                    ),
                    Text("Order Summary", style: CustomMyStyle(14, Color(0xff2F2F2F), FontWeight.w600),),
                    
                    SizedBox(
                      height: height * .010,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Item Total:", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w500),),
                        Text("৳112", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w600),),
                      ],
                    ),
                    SizedBox(
                      height: height * .001,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Cost:", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w500),),
                        Text("৳15", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w600),),
                      ],
                    ),
                       SizedBox(
                      height: height * .001,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payment", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w500),),
                        Text("৳127", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w600),),
                      ],
                    )
                  ],
                ),
              ),
            ),
            
            Expanded(child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total: ৳ 680 ", style: CustomMyStyle(12, Color(0xff2F2F2F), FontWeight.w700),),
                        Text("VAT included, where applicable ", style: CustomMyStyle(12, Color(0xff7A7A7A), FontWeight.w400),),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> PaymentScreen()));
                    },
                    child: Container(
                      height: height * .050,
                      width: width * .230,
                      decoration: BoxDecoration(
                        color: Color(0xff31CD6F),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child:  Center(child: Text("Place Order", style: CustomMyStyle(14, Color(0xffFFFFFF), FontWeight.w700),)),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}