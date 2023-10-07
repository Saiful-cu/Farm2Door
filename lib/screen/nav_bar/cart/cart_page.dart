import 'package:farm2door/screen/nav_bar/cart/chekout_page.dart';
import 'package:farm2door/widget/custom_mystyle.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int quantity = 0;
  String text = "“”Recommend For You“”\"";
  List<String> mangoImages = [
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png",
  ];
  List<String> mangoImageTitle = [
    "Langra Mango (ল্যাংড়া আম)",
    "Langra Mango (ল্যাংড়া আম)",
    "Langra Mango (ল্যাংড়া আম)",
    "Langra Mango (ল্যাংড়া আম)",
    "Langra Mango (ল্যাংড়া আম)",
    "Langra Mango (ল্যাংড়া আম)",
  ];
  List<String> mangoImageRating = [
    "4.5 (1101)   2.0K Sold",
    "4.5 (1101)   2.0K Sold",
    "4.5 (1101)   2.0K Sold",
    "4.5 (1101)   2.0K Sold",
    "4.5 (1101)   2.0K Sold",
    "4.5 (1101)   2.0K Sold",
  ];
  List<String> mangoPrice = [
    "\৳ 620/-",
    "\৳ 620/-",
    "\৳ 620/-",
    "\৳ 620/-",
    "\৳ 620/-",
    "\৳ 620/-",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  Text(
                    "My Cart(2)",
                    style: CustomMyStyle(16, Colors.black, FontWeight.w600),
                  ),
                  Text(
                    "Delete",
                    style: CustomMyStyle(12, Colors.red, FontWeight.w600),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 200,
              child: Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Checkbox(value: false, onChanged: (v) {}),
                            Image.asset("assets/images/Rectangle 17.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mango Rupali (আম রুপালি)",
                                  style: CustomMyStyle(
                                      12, Colors.black, FontWeight.w500),
                                ),
                                Text(
                                  "NitunFarm",
                                  style: CustomMyStyle(
                                      8, Color(0xff7A7A7A), FontWeight.normal),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "৳ 620/-",
                                  style: CustomMyStyle(
                                      14, Colors.black, FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (quantity > 0) {
                                          quantity--;
                                        }
                                      });
                                    },
                                    icon: Icon(Icons.remove)),
                                Container(
                                    height: 20,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        color: Color(0xffECFDE5),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Text(
                                      quantity.toString(),
                                    ))),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity++;
                                      });
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 36,
                    width: 217,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff7A7A7A)),
                    ),
                    child: Center(
                        child: Text(
                      "Enter Voucher Code",
                      style:
                          CustomMyStyle(14, Color(0xff7A7A7A), FontWeight.w500),
                    )),
                  ),
                  Container(
                    height: 36,
                    width: 91,
                    decoration: BoxDecoration(
                      color: Color(0xffD3D3D3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Apply",
                        style: CustomMyStyle(
                            12, Color(0xff2F2F2F), FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Text(
              text,
              style: CustomMyStyle(16, Colors.black, FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .233,
              width: double.infinity,
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: mangoImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: () {
                          //write function or go to details screen
                          // Navigator.push(context, MaterialPageRoute(builder: (_)=> ProductDeatilsScreen()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .50,
                          decoration: BoxDecoration(
                            color: const Color(0xffEFFFF6),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  mangoImages[index],
                                  width: 170,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15,
                                      right: 15,
                                      // top: 10,
                                      bottom: 10), // Add padding for spacing
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        mangoImageTitle[index].toString(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Row(children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 20,
                                        ),
                                        Text(
                                          mangoImageRating[index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ]),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            mangoPrice[index],
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Icon(Icons.add_shopping_cart)
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                            // Adjust the height as needed
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: false,
                            onChanged: (v) {
                              //write your check box function
                            }),
                        Text(
                          "Select All",
                          style: CustomMyStyle(
                              12, Color(0xff2F2F2F), FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Column(
                        children: [
                          Text("Delivery:  ৳ 0 ",
                              style: CustomMyStyle(
                                  12, Color(0xff2F2F2F), FontWeight.w500)),
                          Text("Total:  ৳ 0  ",
                              style: CustomMyStyle(
                                  14, Color(0xff2F2F2F), FontWeight.w700))
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => CheckOutPage()));
                      },
                      child: Container(
                        height: 33,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff31CD6F)),
                        child: Center(
                            child: Text("Check Out(0)",
                                style: CustomMyStyle(
                                    14, Colors.white, FontWeight.w700))),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
