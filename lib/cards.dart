import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

class MyCard1 extends StatelessWidget {
  MyCard1(
      {this.widget,
      this.splashcolour,
      this.haight,
      this.colour,
      this.teaxt,
      this.tsf});
  final Widget widget;
  final Color splashcolour;
  final double haight;
  final Color colour;
  final String teaxt;

  final double tsf;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      //  height: this.haight,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        splashColor: this.splashcolour,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => this.widget,
              ));
        },

        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            this.teaxt,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            // ignore: deprecated_member_use
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                this.colour.withOpacity(0.5),
                Colors.deepPurpleAccent
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15)),
        ),

        // child: Ink(
        //     height: this.haight,
        //     color: this.colour,
        //     child: Center(
        //       child: Text(
        //         this.teaxt,
        //         textScaleFactor: tsf,
        //       ),
        //     )),
      ),
    );
    // return InkWell(
    //    onTap: () {
    //       Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => this.widget,
    //           ));
    //   child: Card(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(15),
    //     ),
    //     elevation: 4,
    //     margin: EdgeInsets.all(10),
    //     child: Column(
    //       children: [
    //         Stack(
    //           children: [
    //             ClipRRect(
    //               borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(15),
    //                 topRight: Radius.circular(15),
    //               ),
    //               child: Image.network(
    //                 imageUrl,
    //                 height: 250,
    //                 width: double.infinity,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //             Positioned(
    //               bottom: 20,
    //               right: 0,
    //               child: Container(
    //                 width: 300,
    //                 color: Colors.black54,
    //                 padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    //                 child: Text(
    //                   title,
    //                   style: TextStyle(
    //                     fontSize: 27,
    //                     color: Colors.white,
    //                   ),
    //                   softWrap: true,
    //                   overflow: TextOverflow.fade,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         Padding(
    //           padding: EdgeInsets.all(20),
    //          ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
