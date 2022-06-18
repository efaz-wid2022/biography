// import 'dart:ffi';

import 'package:flutter/material.dart';

// void main() => runApp(const DurlobChobi());

class DurlobChobi extends StatelessWidget {
  const DurlobChobi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        title: 'দুর্লভ সব ছবি',
        home: Scaffold(
          appBar: AppBar(
            title: Text('দুর্লভ সব ছবি'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: ListView(
                children: [
                  Image.asset(
                    'assets/photo1.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo2.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo3.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo4.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo5.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo6.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo7.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo8.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo9.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo10.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo11.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo12.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo13.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo14.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo15.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo16.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo17.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo18.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo19.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo20.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo21.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo22.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo23.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo24.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/photo25.png',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
