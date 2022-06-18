// import 'dart:convert';
// import 'package:biography_of_bangabondhu/data/quots_api.dart';
// import 'package:biography_of_bangabondhu/model/Quote.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'fifteen_march.dart';
//
// class ekattor extends StatefulWidget {
//   const ekattor({Key? key}) : super(key: key);
//
//   @override
//   State<ekattor> createState() => _ekattorState();
// }
//
// class _ekattorState extends State<ekattor> {
//   late Future<QuoteList> data;
//
//   @override
//   void initState() {
//     super.initState();
//     Network network = Network("http://dynamichubscom.ipage.com/wid_bongobondhu/getQuote.php");
//     data = network.fetchData();
//     print("done");
//     print("InitState:$data");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/aboutbongobondhu.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//
//         child: FutureBuilder(
//           future: data,
//           builder: (BuildContext context, AsyncSnapshot<QuoteList> snapshot) {
//             List<Quote> allQuotes= [];
//             if(snapshot.hasError){
//               return Text("if Error 404", style: TextStyle(fontSize: 50),);
//             }
//             else if(snapshot.hasData){
//               allQuotes = snapshot.data!.quotes;
//               print("ok: ${allQuotes.toString()}"); //allQuotes[0].s_date
//               //return createGridView(context, allQuotes);
//               return Text("${allQuotes[1].year}",style: TextStyle(fontSize: 100),);
//             }
//             else {
//               return CircularProgressIndicator();
//             }
//
//         },
//
//         ),
//         // child: Padding(
//         //   padding: const EdgeInsets.only(right: 5, left: 5),
//         //   // child: GridView(
//         //   //
//         //   //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         //   //     crossAxisCount: 3,
//         //   //     crossAxisSpacing: 16,
//         //   //   ),
//         //   //   children: [
//         //   //
//         //   //     Container(
//         //   //       child: GestureDetector(
//         //   //         onTap: () => {
//         //   //           Navigator.push(
//         //   //             context,
//         //   //             MaterialPageRoute(
//         //   //               builder: (context) => fifteenmarch(),
//         //   //             ),
//         //   //           )
//         //   //         },
//         //   //         child: Stack(
//         //   //           alignment: AlignmentDirectional.bottomCenter,
//         //   //           children: [
//         //   //             Padding(
//         //   //               padding: const EdgeInsets.only(bottom: 15),
//         //   //               child: Image.asset("assets/black_2.png"),
//         //   //             ),
//         //   //             Container(
//         //   //               height: 20,
//         //   //               decoration: BoxDecoration(
//         //   //                 color: Colors.black45,
//         //   //               ),
//         //   //             ),
//         //   //             Text(
//         //   //               "১৫ মার্চ ১৯৭১",
//         //   //               style: TextStyle(
//         //   //                 color: Colors.white,
//         //   //               ),
//         //   //             ),
//         //   //           ],
//         //   //         ),
//         //   //       ),
//         //   //     ),
//         //   //
//         //   //     Container(
//         //   //       child: GestureDetector(
//         //   //         onTap: () => {
//         //   //           Navigator.push(
//         //   //             context,
//         //   //             MaterialPageRoute(
//         //   //               builder: (context) => twentyfour(),
//         //   //             ),
//         //   //           )
//         //   //         },
//         //   //         child: Stack(
//         //   //           alignment: AlignmentDirectional.bottomCenter,
//         //   //           children: [
//         //   //             Padding(
//         //   //               padding: const EdgeInsets.only(bottom: 15),
//         //   //               child: Image.asset("assets/black_7.png"),
//         //   //             ),
//         //   //             Container(
//         //   //               height: 20,
//         //   //               decoration: BoxDecoration(
//         //   //                 color: Colors.black45,
//         //   //               ),
//         //   //             ),
//         //   //             Text(
//         //   //               "২৪ জানুয়ারি ১৯৭১",
//         //   //               style: TextStyle(
//         //   //                 color: Colors.white,
//         //   //               ),
//         //   //             ),
//         //   //           ],
//         //   //         ),
//         //   //       ),
//         //   //     ),
//         //   //     // Container(
//         //   //     //   child: GestureDetector(
//         //   //     //     onTap: () => {
//         //   //     //       Navigator.push(
//         //   //     //         context,
//         //   //     //         MaterialPageRoute(
//         //   //     //           builder: (context) => fifteenmarch(),
//         //   //     //         ),
//         //   //     //       )
//         //   //     //     },
//         //   //     //     child: Stack(
//         //   //     //       alignment: AlignmentDirectional.bottomCenter,
//         //   //     //       children: [
//         //   //     //         Padding(
//         //   //     //           padding: const EdgeInsets.only(bottom: 15),
//         //   //     //           child: Image.asset("assets/black_2.png"),
//         //   //     //         ),
//         //   //     //         Container(
//         //   //     //           height: 20,
//         //   //     //           decoration: BoxDecoration(
//         //   //     //             color: Colors.black45,
//         //   //     //           ),
//         //   //     //         ),
//         //   //     //         Text(
//         //   //     //           "১৫ মার্চ ১৯৭১",
//         //   //     //           style: TextStyle(
//         //   //     //             color: Colors.white,
//         //   //     //           ),
//         //   //     //         ),
//         //   //     //       ],
//         //   //     //     ),
//         //   //     //   ),
//         //   //     // ),
//         //   //     // Container(
//         //   //     //   child: Stack(
//         //   //     //     alignment: Alignment.bottomCenter,
//         //   //     //     children: [
//         //   //     //       Padding(
//         //   //     //         padding: EdgeInsets.only(bottom: 15),
//         //   //     //         child: Image.asset("assets/black_7.png"),
//         //   //     //       ),
//         //   //     //       Container(
//         //   //     //         height: 20,
//         //   //     //         decoration: BoxDecoration(
//         //   //     //           color: Colors.black45,
//         //   //     //         ),
//         //   //     //       ),
//         //   //     //       Text(
//         //   //     //         "২৪ জানুয়ারি ১৯৭১",
//         //   //     //         style: TextStyle(
//         //   //     //           color: Colors.white,
//         //   //     //         ),
//         //   //     //       ),
//         //   //     //     ],
//         //   //     //   ),
//         //   //     // ),
//         //   //     // Container(
//         //   //     //   child: Stack(
//         //   //     //     alignment: Alignment.bottomCenter,
//         //   //     //     children: [
//         //   //     //       Padding(
//         //   //     //         padding: EdgeInsets.only(bottom: 15),
//         //   //     //         child: Image.asset("assets/black_3.png"),
//         //   //     //       ),
//         //   //     //       Container(
//         //   //     //         height: 20,
//         //   //     //         decoration: BoxDecoration(
//         //   //     //           color: Colors.black45,
//         //   //     //         ),
//         //   //     //       ),
//         //   //     //       Text(
//         //   //     //         "১৫ মার্চ ১৯৭১",
//         //   //     //         style: TextStyle(
//         //   //     //           color: Colors.white,
//         //   //     //         ),
//         //   //     //       ),
//         //   //     //     ],
//         //   //     //   ),
//         //   //     // ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/black_4.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "২৫ মার্চ ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/black_5.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "১১ মার্চ ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/black_6.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "৭ মার্চ ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/black_1.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "১১ জানুয়ারি ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/black_8.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "২১ ফেব্রুয়ারি ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/black_9.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "৭ মার্চ ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/black_10.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "১৫ মার্চ ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/black_11.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "১৫ মার্চ ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //     Container(
//         //   //       child: Stack(
//         //   //         alignment: Alignment.bottomCenter,
//         //   //         children: [
//         //   //           Padding(
//         //   //             padding: EdgeInsets.only(bottom: 15),
//         //   //             child: Image.asset("assets/blue_10.png"),
//         //   //           ),
//         //   //           Container(
//         //   //             height: 20,
//         //   //             decoration: BoxDecoration(
//         //   //               color: Colors.black45,
//         //   //             ),
//         //   //           ),
//         //   //           Text(
//         //   //             "২৮ জানুয়ারি ১৯৭১",
//         //   //             style: TextStyle(
//         //   //               color: Colors.white,
//         //   //             ),
//         //   //           ),
//         //   //         ],
//         //   //       ),
//         //   //     ),
//         //   //   ],
//         //   // ),
//         //
//         //   child: GridView.builder(
//         //
//         //     // itemCount: quoteList.length,
//         //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         //         crossAxisCount: 3, crossAxisSpacing: 5.0, mainAxisSpacing: 5.0),
//         //     itemBuilder: ( BuildContext context, int index ) {
//         //
//         //
//         //       return Container(
//         //         child: GestureDetector(
//         //           onTap: () => {
//         //             Navigator.push(
//         //               context,
//         //               MaterialPageRoute(
//         //                 builder: (context) => fifteenmarch(),
//         //               ),
//         //             )
//         //           },
//         //           child: Stack(
//         //             alignment: AlignmentDirectional.bottomCenter,
//         //             children: [
//         //               Padding(
//         //                 padding: const EdgeInsets.only(bottom: 15),
//         //                 // child: Image.network("${quoteList[index].image_url}"),
//         //               ),
//         //               Container(
//         //                 height: 20,
//         //                 decoration: BoxDecoration(
//         //                   color: Colors.black45,
//         //                 ),
//         //               ),
//         //               // Text(
//         //               //   "${quoteList[index].s_date}",
//         //               //   style: TextStyle(
//         //               //     color: Colors.white,
//         //               //   ),
//         //               // ),
//         //               Container(
//         //                 child: FutureBuilder(
//         //                   // future: getData(),
//         //                   builder: (context, AsyncSnapshot snapshot){
//         //                     return Text(
//         //
//         //                       snapshot.data.toString()
//         //                       //   "${quoteList[index].s_date}",
//         //
//         //                       // snapshot.data[index],
//         //                     );
//         //                     //     style: TextStyle(
//         //                     //     color: Colors.white,
//         //                     // ),
//         //                   },
//         //                 ),
//         //               ),
//         //             ],
//         //           ),
//         //         ),
//         //       );
//         //     },
//         //   ),
//         // ),
//       ),
//     );
//   }
//
//   Widget createGridView(BuildContext context, List allQuotes) {
//     return Container(
//
//     );
//   }
// }
//
// class Network {
//   final dynamic url;
//   Network(this.url);
//
//   Future<QuoteList> fetchData() async {
//     print("fetch data: $url");
//     Response response = await get(Uri.parse(url), headers: {
//
//     });
//     if (response.statusCode == 200) {
//       // print(response.body);
//       print("print in fetchData if ${response.body}");
//       return QuoteList.fromJson(json.decode(response.body) as List<dynamic>);
//       //json.decode(response.body)
//       //jsonDecode(responseBody).cast<Map<String, dynamic>>();
//     } else {
//       print(response.statusCode);
//       throw Exception("Failed to load");
//     }
//   }
// }

