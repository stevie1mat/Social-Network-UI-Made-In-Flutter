import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SixthFeedUI extends StatelessWidget {
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
                              'https://www.westernunion.com/content/dam/wu/jm/responsive/send-money-in-person-from-jamaica-resp.png',
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  '1 hr',
                  style: GoogleFonts.lato(
                      color: Colors.grey[500],
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: Text(
            'Watch My New Video released on Nov 12th 2020. Do Subscribe & Like.',
            style: GoogleFonts.lato(
                color: Colors.grey[600],
                fontSize: 15,
                letterSpacing: 1,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
          child: Material(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              elevation: 6,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Stack(children: [
                  Image.network(
                      'https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  Positioned(
                    top: 90,
                    left: 150,
                    child: Center(
                      child: Image.network(
                        'https://www.freepnglogos.com/uploads/play-button-png/index-media-cover-art-play-button-overlay-5.png',
                        height: 60,
                      ),
                    ),
                  )
                ]),
              )),
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
