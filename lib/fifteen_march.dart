import 'dart:ui';
import 'package:flutter/material.dart';

import 'model/Quote.dart';



class GridDetailsRoute extends StatefulWidget {
  final List<Quote> allQuotes;
  final index;

  GridDetailsRoute(this.allQuotes, this.index);

  @override
  State<GridDetailsRoute> createState() => _GridDetailsRouteState();
}

class _GridDetailsRouteState extends State<GridDetailsRoute> {
  @override
  Widget build(BuildContext context) {

    PageController pageController = PageController(initialPage: widget.index);
    int pageChanged = 0;
    return Scaffold(
      body: PageView.builder(
        itemCount: widget.allQuotes.length,
        controller: pageController,
        onPageChanged: (index){
          setState((){
            pageChanged = index;
          });
          print(pageChanged);
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/aboutbongobondhu.png"),
                  fit: BoxFit.cover,
                ),
              ),
              // child: PageView.builder(
              //   itemBuilder: (context, index) {
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: const Text(
                                        ' “ ',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Arial',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: Text("${widget.allQuotes[index].text.toString()}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 50, left: 50, right: 50),
                                      child: Container(
                                        child: Text(
                                          "${widget.allQuotes[index].l_date
                                              .toString()}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: Container(
                                    child: Image.network(
                                      "${widget.allQuotes[index].image_url}",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                // },
                // itemCount: widget.allQuotes.length,
                // scrollDirection: Axis.horizontal,
              // ),
            ),

          );

        },

        // onPageChanged: (index){
        //   setState(() {
        //     allQoutes = index;
        //   } );
        //   print(allQoutes);
        // },

      ),
    );
  }
}
