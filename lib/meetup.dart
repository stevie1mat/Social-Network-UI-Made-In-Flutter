import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walkthrough1/event.dart';

class Meetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Meetup',
                style: GoogleFonts.lato(
                    color: Colors.black87,
                    fontSize: 16.5,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 14),
              child: Material(
                borderRadius: BorderRadius.circular(18),
                elevation: 4,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      height: 450,
                      child: Stack(
                        children: <Widget>[
                          Container(
                              height: 212,
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0)),
                                  child: Image.network(
                                    'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
                                  ))),
                          Positioned(
                            bottom: 210,
                            right:
                                250, //give the values according to your requirement
                            child: Container(
                              height: 80,
                              width: 80,
                              child: Material(
                                  color: Colors.white,
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(100),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        'https://images.pexels.com/photos/3767673/pexels-photo-3767673.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Positioned(
                              top: 260,
                              left: 25,
                              child: Text(
                                'Wed 2, October 2019, at 9AM',
                                style: GoogleFonts.lato(
                                    color: Colors.orange[700],
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal),
                              )),
                          Positioned(
                              top: 283,
                              left: 25,
                              child: Text(
                                'Atlassian Open 2019',
                                style: GoogleFonts.lato(
                                    color: Colors.black87,
                                    fontSize: 16.5,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              top: 303,
                              left: 26,
                              child: Text(
                                'at Sudney, Australia',
                                style: GoogleFonts.lato(
                                    color: Colors.grey[500]!,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal),
                              )),
                          Positioned(
                            top: 320,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 25, left: 26.0, bottom: 5),
                              child: Row(
                                children: [
                                  Stack(children: [
                                    // Material(
                                    //   elevation: 0,
                                    //   borderRadius: BorderRadius.circular(100),
                                    //   child: Padding(
                                    //     padding: const EdgeInsets.only(top: 2.0),
                                    //     child: CircleAvatar(
                                    //         radius: 10,
                                    //         backgroundImage: NetworkImage(
                                    //           'https://miro.medium.com/max/10000/0*wZAcNrIWFFjuJA78',
                                    //         )),
                                    //   ),
                                    // ),

                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 0.0,
                                        top: 0.5,
                                      ),
                                      child: Material(
                                        elevation: 4,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: CircleAvatar(
                                              radius: 9,
                                              backgroundImage: NetworkImage(
                                                'https://i.insider.com/5c9a115d8e436a63e42c2883?width=600&format=jpeg&auto=webp',
                                              )),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16.0,
                                      ),
                                      child: Material(
                                        elevation: 4,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: CircleAvatar(
                                              radius: 9,
                                              backgroundImage: NetworkImage(
                                                'https://play-images-prod-cms.tech.tvnz.co.nz/api/v1/web/image/content/dam/images/entertainment/shows/p/person-of-interest/personofinterest_coverimg.png.2017-03-08T11:21:33+13:00.jpg?width=960&height=540',
                                              )),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4.0, left: 10),
                                      child: Text(
                                        '5 Joining, Including Alan Mathew',
                                        style: GoogleFonts.lato(
                                            color: Colors.grey[500],
                                            fontSize: 14,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 393,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  var route = new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new EventPage(),
                                  );

                                  Navigator.of(context).push(route);
                                },
                                child: Material(
                                  color: Colors.orange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  elevation: 2,
                                  child: Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width /
                                          1.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(
                                            color: Colors.orange, width: 1),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'View Event',
                                        style: GoogleFonts.averageSans(
                                            color: Colors.white,
                                            fontSize: 14,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ))),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Icon(
                      Icons.event,
                      size: 19,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Overcoming Events',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[800],
                        fontSize: 17,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 28, top: 14, bottom: 5),
                  child: Material(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    elevation: 2,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.white),
                          height: 220,
                          width: 280,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0)),
                                    child: Image.network(
                                        'https://images.pexels.com/photos/1470165/pexels-photo-1470165.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                        fit: BoxFit.cover),
                                  )),
                              Positioned(
                                bottom: 100,
                                right:
                                    210, //give the values according to your requirement
                                child: Material(
                                    color: Colors.white,
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(100),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/3767673/pexels-photo-3767673.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                        ),
                                      ),
                                    )),
                              ),
                              Positioned(
                                  top: 130,
                                  left: 25,
                                  child: Text(
                                    'Wed 2, October 2019, at 9AM',
                                    style: GoogleFonts.lato(
                                        color: Colors.orange[700],
                                        fontSize: 13,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.normal),
                                  )),
                              Positioned(
                                  top: 150,
                                  left: 25,
                                  child: Text(
                                    'Atlassian Open 2019',
                                    style: GoogleFonts.lato(
                                        color: Colors.black87,
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Positioned(
                                top: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25, left: 26.0, bottom: 5),
                                  child: Row(
                                    children: [
                                      Stack(children: [
                                        // Material(
                                        //   elevation: 0,
                                        //   borderRadius: BorderRadius.circular(100),
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.only(top: 2.0),
                                        //     child: CircleAvatar(
                                        //         radius: 10,
                                        //         backgroundImage: NetworkImage(
                                        //           'https://miro.medium.com/max/10000/0*wZAcNrIWFFjuJA78',
                                        //         )),
                                        //   ),
                                        // ),

                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 0.0,
                                            top: 0.5,
                                          ),
                                          child: Material(
                                            elevation: 4,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: CircleAvatar(
                                                  radius: 9,
                                                  backgroundImage: NetworkImage(
                                                    'https://i.insider.com/5c9a115d8e436a63e42c2883?width=600&format=jpeg&auto=webp',
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 16.0,
                                          ),
                                          child: Material(
                                            elevation: 4,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: CircleAvatar(
                                                  radius: 9,
                                                  backgroundImage: NetworkImage(
                                                    'https://play-images-prod-cms.tech.tvnz.co.nz/api/v1/web/image/content/dam/images/entertainment/shows/p/person-of-interest/personofinterest_coverimg.png.2017-03-08T11:21:33+13:00.jpg?width=960&height=540',
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 4.0, left: 10),
                                          child: Text(
                                            '5 Joining, Including You',
                                            style: GoogleFonts.lato(
                                                color: Colors.grey[500],
                                                fontSize: 14,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 28, top: 14, bottom: 5),
                  child: Material(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    elevation: 2,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.white),
                          height: 220,
                          width: 280,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0)),
                                    child: Image.network(
                                        'https://images.pexels.com/photos/569996/pexels-photo-569996.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                        fit: BoxFit.cover),
                                  )),
                              Positioned(
                                bottom: 100,
                                right:
                                    210, //give the values according to your requirement
                                child: Material(
                                    color: Colors.white,
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(100),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/6186/vintage-mockup-old-logo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                        ),
                                      ),
                                    )),
                              ),
                              Positioned(
                                  top: 130,
                                  left: 25,
                                  child: Text(
                                    'Wed 2, October 2019, at 9AM',
                                    style: GoogleFonts.lato(
                                        color: Colors.orange[700],
                                        fontSize: 13,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.normal),
                                  )),
                              Positioned(
                                  top: 150,
                                  left: 25,
                                  child: Text(
                                    'Atlassian Open 2019',
                                    style: GoogleFonts.lato(
                                        color: Colors.black87,
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Positioned(
                                top: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25, left: 26.0, bottom: 5),
                                  child: Row(
                                    children: [
                                      Stack(children: [
                                        // Material(
                                        //   elevation: 0,
                                        //   borderRadius: BorderRadius.circular(100),
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.only(top: 2.0),
                                        //     child: CircleAvatar(
                                        //         radius: 10,
                                        //         backgroundImage: NetworkImage(
                                        //           'https://miro.medium.com/max/10000/0*wZAcNrIWFFjuJA78',
                                        //         )),
                                        //   ),
                                        // ),

                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 0.0,
                                            top: 0.5,
                                          ),
                                          child: Material(
                                            elevation: 4,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: CircleAvatar(
                                                  radius: 9,
                                                  backgroundImage: NetworkImage(
                                                    'https://i.insider.com/5c9a115d8e436a63e42c2883?width=600&format=jpeg&auto=webp',
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 16.0,
                                          ),
                                          child: Material(
                                            elevation: 4,
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: CircleAvatar(
                                                  radius: 9,
                                                  backgroundImage: NetworkImage(
                                                    'https://play-images-prod-cms.tech.tvnz.co.nz/api/v1/web/image/content/dam/images/entertainment/shows/p/person-of-interest/personofinterest_coverimg.png.2017-03-08T11:21:33+13:00.jpg?width=960&height=540',
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 4.0, left: 10),
                                          child: Text(
                                            '5 Joining, Including You',
                                            style: GoogleFonts.lato(
                                                color: Colors.grey[500],
                                                fontSize: 14,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 0,
            )
          ],
        ),
      ),
    );
  }
}
