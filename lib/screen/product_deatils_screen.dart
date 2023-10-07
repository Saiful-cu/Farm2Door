import 'package:farm2door/widget/custom_mystyle.dart';
import 'package:flutter/material.dart';

class ProductDeatilsScreen extends StatelessWidget {
  const ProductDeatilsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String title = "Mango Rupali (আম রুপালি)";
     List<String> mangoImages= [
    "assets/images/mango.png",
    
    "assets/images/mango.png",
    
    "assets/images/mango.png",
    "assets/images/mango.png","assets/images/mango.png","assets/images/mango.png",
    
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
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      
                    

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
             height: MediaQuery.of(context).size.height * .86,
                    width: MediaQuery.of(context).size.height * 100,
                    
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: const Icon(Icons.arrow_back)),
                          Container(
                      height: MediaQuery.of(context).size.height * .040,
                      width: MediaQuery.of(context).size.height * .300,
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          children: [
                            const Icon(Icons.search, size: 18,color: Color(0xff7A7A7A),),
                            Text("Search", style: CustomMyStyle(12, const Color(0xff7A7A7A), FontWeight.normal),),
                          ],
                        ),
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz)),
                      ],
                    ),
                    Image.asset("assets/images/rupalimango.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.green
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                         Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.green)
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                         Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                             border: Border.all(color: Colors.green)
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                             border: Border.all(color: Colors.green)
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title, style: CustomMyStyle(16, Colors.black, FontWeight.w600),),
                        Container(
                          height: MediaQuery.of(context).size.height * .030,
                      width: MediaQuery.of(context).size.height * .120,
                      color: Colors.orange.shade600,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Top Rated", style: CustomMyStyle(12, Colors.white, FontWeight.normal),),
                          const Icon(Icons.star, size: 16,color: Colors.white,),
                        ]),
                      ),
                        )
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("By Weight (min 5 kg)", style: CustomMyStyle(11, const Color(0xff7A7A7A), FontWeight.w500),),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.star, size: 16,color: Colors.orange,),
                            Text("4.5 (101)   2.0K Sold", style: CustomMyStyle(10, const Color(0xff2F2F2F), FontWeight.w500),),
                            
                          ]),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("৳ 620/-", style: CustomMyStyle(14, const Color(0xff2F2F2F), FontWeight.w600),)),
                    
                    Container(
                      height: MediaQuery.of(context).size.height * .060,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          
                          children: [
                          Container(
                            height: 40,
                            width: 40,
                            
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                
                                "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"))
                            ),
                      
                          ),
                          const SizedBox(width: 10,),
                          Text("NitunFarm", style: CustomMyStyle(12, const Color(0xff2F2F2F), FontWeight.w600),),
                         
                         const SizedBox(width: 170,),
                          Container(
                               height: MediaQuery.of(context).size.height * .035,
                        width: MediaQuery.of(context).size.height * .150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                      
                        ),
                        child: Center(child: Text("98% Positive Review", style: CustomMyStyle(10, const Color(0xffFFFFFF), FontWeight.w500),)),
                          )
                        ]),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Description", style: CustomMyStyle(14, Colors.black, FontWeight.w600),)),
                    Text("বাংলাদেশে যেসব ফল উৎপন্ন হয় তার মধ্যে আমের জনপ্রিয়তা সবচেয়ে বেশি। আমের নানাবিধ ব্যবহার, স্বাদ-গন্ধ ও পুষ্টিমাণের জন্য এটি একটি আদর্শ ফল হিসেবে পরিচিত। তাই আমকে ফলের রাজা বলা হয়। সাতখিরা সবচেয়ে ভাল আম রুপালি আম পাওয়া যায়।", 
                      style: CustomMyStyle(11, const Color(0xff666565
                          ), FontWeight.w400),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ratings & Reviews (101)", style: CustomMyStyle(17, const Color(0xff7A7A7A), FontWeight.w500),),
                        Text("View All", style: CustomMyStyle(17, const Color(0xff31CD6F), FontWeight.w500),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2**3 - 27 Aug 2023", style: CustomMyStyle(8, const Color(0xff2F2F2F), FontWeight.w500)),
                        Text("⭐⭐⭐⭐⭐", style: CustomMyStyle(8, const Color(0xff2F2F2F), FontWeight.w500)),
                      ],
                    ),
                     Text("আপনাদের আম গুলো এক কথায় অসাধারণ । খবই মিষ্টি ও তুলনাহীন আমাদের বাড়ির সবাই খুবই খুশি আপনাদের আম খেয়ে । আজীবন ফ্যান হয়ে গেলাম আমরা সবাই আপনাদের সার্ভিসের । ধন্যবাদ কথা ও কাজে মিল রাখার জন্য", style: CustomMyStyle(8, const Color(0xff2F2F2F), FontWeight.w500)),
                
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(image: AssetImage("assets/images/Rectangle 11.png")),
                          ),
                        ),
                         Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(image: AssetImage("assets/images/Rectangle 12.png")),
                          ),
                        ),
                         Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(image: AssetImage("assets/images/Rectangle 12.png")),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green
                      ),
                      child: Center(child: Text("See More", style: CustomMyStyle(12, Colors.white, FontWeight.normal),)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Related Products", style: CustomMyStyle(17, const Color(0xff7A7A7A), FontWeight.w500),),
                        Text("View All", style: CustomMyStyle(17, const Color(0xff31CD6F), FontWeight.w500),),
                      ],
                    ),
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: GridView.builder(
                      itemCount: mangoImages.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:  2 ),
                      itemBuilder: (BuildContext context, int index) {
                        
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: InkWell(
                            onTap: (){
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                    
                    
                  ],
                ),
              )),
            SizedBox(
              height: MediaQuery.of(context).size.height * .10,
                      
                      
              child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Icon(Icons.store, size: 18,color: Colors.orange,),
                          Text("Store"),
                        ],
                      ),
                    ),
                     const Padding(
                       padding: EdgeInsets.only(top: 5),
                       child: Column(
                                   
                        children: [
                          Icon(Icons.message, size: 18,color: Colors.orange,),
                          Text("Chat"),
                        ],
                                         ),
                     ),
                    Container(
                         height: MediaQuery.of(context).size.height * .060,
                      width: MediaQuery.of(context).size.height * .170,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade600,
                        borderRadius: BorderRadius.circular(10),
              
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
              
                          Text("Add to cart", style: CustomMyStyle(14, Colors.white, FontWeight.w700),),
                          const Icon(Icons.shopping_cart, color: Colors.white,),
                        ],
                      ),
                    ),
                    Container(
                         height: MediaQuery.of(context).size.height * .060,
                      width: MediaQuery.of(context).size.height * .120,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
              
                      ),
                      child: Center(child: Text("Buy Now", style: CustomMyStyle(14, Colors.white, FontWeight.w700),)),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}