import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walkthrough1/connections.dart';
import 'package:walkthrough1/feedui/second.dart';
import 'package:walkthrough1/feedui/third.dart';
import 'package:walkthrough1/status.dart';

import 'feedui/first.dart';
import 'feedui/fivth.dart';
import 'feedui/fourth.dart';
import 'feedui/sixth.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Image.asset(
                          'images/logo.png',
                          height: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 15.0),
                                            child: Text(
                      'Socio Network',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700]!,
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) => new Connections(),
                      );

                      Navigator.of(context).push(route);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 4),
                      child: Icon(Icons.link),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Image.asset(
              //   'images/first.png',
              //   height: 300,
              // ),
              Container(color: Colors.white, height: 120, child: Status()),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Divider(),
              ),
              SizedBox(
                height: 10,
              ),
              FirstFeedUI(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),
              SizedBox(
                height: 0,
              ),
              SecondFeedUI(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),
              SizedBox(
                height: 10,
              ),
              ThirdFeedUI(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),
              SizedBox(
                height: 10,
              ),
              FivthFeedUI(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),
              SizedBox(
                height: 10,
              ),
              FourthFeedUI(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),

              SixthFeedUI(),
            ],
          ),
        ));
  }
}
