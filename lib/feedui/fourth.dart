import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthFeedUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(140)),
                  height: 58,
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 74,
                          margin: const EdgeInsets.only(
                              left: 0.0, right: 0, top: 0, bottom: 0),
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://ggsc.s3.amazonaws.com/images/made/images/uploads/Six_Ways_to_Speak_Up_Against_Bad_Behavior_350_235_s_c1.jpg',
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 13),
                    child: Text(
                      'Sound Byte',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700]!,
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 13),
                    child: Text(
                      'has checked in',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'with',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Dina',
                        style: GoogleFonts.lato(
                            color: Colors.grey[700],
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'and',
                        style: GoogleFonts.lato(
                            color: Colors.grey[700],
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.normal),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        '8 others.',
                        style: GoogleFonts.lato(
                            color: Colors.grey[700],
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Image.network(
                'https://static.thenounproject.com/png/658625-200.png',
                height: 30,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16, right: 13),
          child: Text(
            'Here\'s Part 3 Of HTML Mini Series. Hope You all will enjoy',
            style: GoogleFonts.lato(
                color: Colors.grey[700],
                fontSize: 15,
                letterSpacing: 1,
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 80,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.grey[300] ?? Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, top: 13),
                      child: Text(
                        'HTML 5 Tip - Part 3',
                        style: GoogleFonts.lato(
                            color: Colors.grey[700],
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Container(
                            // height: 100,
                            // width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.all(color: Colors.orange[400] ?? Colors.orange),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 3, bottom: 3),
                              child: Text(
                                'Advice',
                                style: GoogleFonts.lato(
                                    color: Colors.orange[400],
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Oct 6 - 7:21',
                          style: GoogleFonts.lato(
                              color: Colors.grey[500],
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange[400],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                      )),
                )
              ],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 28.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Image.asset(
                      'images/like.png',
                      height: 35,
                    ),
                  ),
                  // Text(
                  //   '45',
                  //   style: GoogleFonts.averageSans(
                  //       color: Colors.grey[700],
                  //       fontSize: 22,
                  //       letterSpacing: 1,
                  //       fontWeight: FontWeight.normal),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 22.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Image.network(
                      'https://www.searchpng.com/wp-content/uploads/2019/02/Comment-Icon-PNG.png',
                      height: 40,
                    ),
                  ),
                  Text(
                    '45',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
