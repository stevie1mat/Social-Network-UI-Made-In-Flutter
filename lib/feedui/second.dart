import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondFeedUI extends StatelessWidget {
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
                              'https://storage.googleapis.com/multibhashi-website/website-media/2017/12/person.jpg',
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
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 13),
                    child: Text(
                      'is now connected',
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
                      'to',
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
        Container(
          height: 278,
          child: Stack(
            children: [
              Row(children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, top: 28, bottom: 8),
                  child: Container(
                      width: 180,
                      height: 300,
                      child: Material(
                        borderRadius: BorderRadius.circular(0.0),
                        elevation: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          child: Image.network(
                            'https://images.pexels.com/photos/4264555/pexels-photo-4264555.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 3.0, top: 28, bottom: 4),
                      child: Container(
                          width: 180,
                          height: 119,
                          child: Material(
                            borderRadius: BorderRadius.circular(0.0),
                            elevation: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20)),
                              child: Image.network(
                                'https://images.pexels.com/photos/1779487/pexels-photo-1779487.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 3.0, top: 0, bottom: 0),
                      child: Container(
                          width: 180,
                          height: 119,
                          child: Material(
                            borderRadius: BorderRadius.circular(0.0),
                            elevation: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20)),
                              child: Image.network(
                                'https://images.pexels.com/photos/59992/crocus-flower-spring-purple-59992.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
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
              padding: const EdgeInsets.only(top: 4, right: 22.0),
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
