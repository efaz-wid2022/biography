
import 'dart:html';

import 'package:biography_of_bangabondhu/uddriti.dart';
import 'package:flutter/material.dart';

import 'Apnar_Shongroho_Share.dart';
import 'bongobondhuBooks.dart';
import 'durlobsobchobi.dart';
import 'ekNojoreBongobondhu.dart';
import 'home_screen.dart';
import 'jiboni.dart';


// void main() => runApp(const vedio());


class vedio extends StatelessWidget {
  const vedio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height= MediaQuery.of(context).size.height;
    return MaterialApp(

    debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primarySwatch: Colors.deepOrange,
       ),
      title: 'এক নজরে বঙ্গবন্ধু',
      home: Scaffold(

        appBar: AppBar(
          title: Text('দুর্লভ ভিডিও সমূহ'),
        ),

        body: SingleChildScrollView(
         child: Container(

           // alignment: Alignment.center,
           // padding:EdgeInsets.all(17),
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/aboutbongobondhu.png'),
               fit: BoxFit.cover,
             ),
           ),


         ),

        ),
        drawer: Container(
          // width: 2 * (width / 3),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'এক নজরে বঙ্গবন্ধু',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  decoration: BoxDecoration(

                      color: Colors.deepOrange,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/splash.png'))),

                ),
                ListTile(
                  leading: Icon(Icons.remove_red_eye_rounded),
                  title: Text('এক নজরে বঙ্গবন্ধ'), //
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>MyApps (),
                      ),
                    )
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article_rounded),
                  title: Text('বঙ্গবন্ধুর ৭ই মার্চ এর ভাষণ'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ekNojoreBongobondhu(),
                      ),
                    )
                  },
                ),
                ListTile(
                  leading: Icon(Icons.format_quote_sharp),
                  title: Text('উদৃতি'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => uddriti(),
                      ),
                    )
                  },
                ),
                ListTile(
                  leading: Icon(Icons.border_color),
                  title: Text('জীবনী'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => jiboni(),
                      ),
                    )
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('দুর্লভ সব ছবি'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DurlobChobi(),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: Icon(Icons.video_collection),
                  title: Text('দুর্লব ভিডিও সমুহ'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('বই সমূহ'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => bookpdf(),
                      ),
                    ),
                  },
                ),
                ListTile(
                  leading: Icon(Icons.collections_bookmark_rounded),
                  title: Text('আপনার সংগ্রহ শেয়ার করুন'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const apnar_shongroho(),
                      ),
                    )},
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}





// class StackedVideoView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<StackedVideoViewModel>.reactive(
//       viewModelBuilder: () => StackedVideoViewModel(),
//       onModelReady: (model) {
//         model.initialize('https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4');
//       },
//       builder: (context, model, child) {
//         return Container(
//           child: VideoPlayer(model.videoPlayerController),
//         );
//       },
//     );
//   }
// }