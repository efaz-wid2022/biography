import 'dart:convert';
import 'package:biography_of_bangabondhu/data/quots_api.dart';
import 'package:biography_of_bangabondhu/model/Quote.dart';
import 'package:biography_of_bangabondhu/twentyfour.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'fifteen_march.dart';
import 'package:biography_of_bangabondhu/model/Quote.dart';

class ekattor extends StatefulWidget {
  late String year;

  ekattor(this.year, {Key? key}) : super(key: key);
  //const ekattor({Key? key}) : super(key: key);

  @override
  State<ekattor> createState() => _ekattorState();
}

class _ekattorState extends State<ekattor> {
  late Future<QuoteList> data;

  @override
  void initState() {
    super.initState();
    Network network = Network(
        "https://dynamichubscom.ipage.com/wid_bongobondhu/getQuote.php?year=",
        widget.year);
    print(widget.year);
    data = network.fetchData();
    // print("done");
    // print("InitState:$data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/aboutbongobondhu.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: FutureBuilder(
            future: data,
            builder: (BuildContext context, AsyncSnapshot<QuoteList> snapshot) {
              List<Quote> allQuotes = [];
              if (snapshot.hasError) {
                return Text(
                  "Error 404",
                  style: TextStyle(fontSize: 50),
                );
              } else if (snapshot.hasData) {
                allQuotes = snapshot.data!.quotes;
                // print("ok: ${allQuotes.toString()}"); //allQuotes[0].s_date
                //return createGridView(context, allQuotes);
                return gridViewCreate(context, allQuotes);
              } else {
                return circularProgressBar();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget gridViewCreate(BuildContext context, List<Quote> allQuotes) {
    return Container(
      child: GridView.builder(
        itemCount: allQuotes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5.0, mainAxisSpacing: 5.0),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridDetailsRoute(allQuotes, index),
                  ),
                )
              },
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Image.network(
                      "${allQuotes[index].image_url}",
                    ),
                  ),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                    ),
                  ),
                  Container(
                    child: Text(
                      "${allQuotes[index].s_date.toString()}",
                      style: TextStyle(
                        color: Colors.white,
                      ),
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

  Widget circularProgressBar() {
    return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey,
        ));
  }
}

class Network {
  final dynamic url;
  final String year;
  Network(this.url, this.year);

  Future<QuoteList> fetchData() async {
    // print("fetch data: $url");
    //Response response = await get(Uri.parse(url), headers: {});
    String api = url + year;
    print("outside if $api");
    Response response = await post(
      Uri.parse(api),
      body: jsonEncode(<String, String>{
        'year': year,
      }),
    );

    if (response.statusCode == 200) {
      print(response.body);
      print("inside if $year");
      // print("print in fetchData if ${response.body}");
      return QuoteList.fromJson(json.decode(response.body) as List<dynamic>);
      //json.decode(response.body)
      //jsonDecode(responseBody).cast<Map<String, dynamic>>();
    } else {
      print(response.statusCode);
      throw Exception("Failed to load");
    }
  }
}
