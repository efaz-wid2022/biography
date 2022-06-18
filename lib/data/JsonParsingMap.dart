import 'dart:convert';

import 'package:biography_of_bangabondhu/model/Quote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsingMap extends StatefulWidget {
  const JsonParsingMap({Key? key}) : super(key: key);

  @override
  State<JsonParsingMap> createState() => _JsonParsingMapState();
}

class _JsonParsingMapState extends State<JsonParsingMap> {
  late Future<QuoteList> data;

  @override
  void initState() {
    super.initState();
    Network network =
        Network("http://dynamichubscom.ipage.com/wid_bongobondhu/getQuote.php");
    data = network.loadPosts();
    print("done");
    print("InitState:$data");
  }

  @override
  Widget build(BuildContext context) {
    //var allPosts;
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        child: FutureBuilder(
          // future: data,
          // builder: (context, AsyncSnapshot<QuoteList> snapshot) {
          //   List<Quote> allQuotes;
          //   print("if check: $data");
          //   if(snapshot.hasData){
          //     print("snapshot.hasData");
          //     return Text("if");
          //
          //   }
          //   else {
          //     print("no data");
          //     return Text("no data");
          //   }
          //   if (snapshot.hasData) {
          //     print("snapshot.hasData");
          //     allQuotes = snapshot.data!.quotes;
          //     return Text(allQuotes[0].toString());
          //   }else {
          //
          //     return CircularProgressIndicator();
          //   }
          future: data,
          builder: (BuildContext context, AsyncSnapshot<QuoteList> snapshot) {
            List<Quote> allQuotes;
            print("snapshot: $snapshot.data.toString()");
            if (snapshot.hasData) {
              //print((snapshot.data!() as Map<String, dynamic>)['location'] as String);
              allQuotes = snapshot.data!.quotes;
              return Text("${allQuotes[0].s_date}");
            }
            return Text("faul");
          },
        ),
      ),
    );
  }
}

class Network {
  final String url;
  Network(this.url);

  Future<QuoteList> loadPosts() async {
    final response = await get(Uri.parse(Uri.encodeFull(url)));
    if (response.statusCode == 200) {
      // print(response.body);
      return QuoteList.fromJson(json.decode(response.body));
      //final extractedData = ApiResponse.fromJson(json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception("Failed to load");
    }
  }
}
