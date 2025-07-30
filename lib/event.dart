import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0, top: 0),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        elevation: 2,
                        child: FlutterMap(
                          options: MapOptions(
                            center: LatLng(45.5231, -122.6765),
                            zoom: 13.0,
                          ),
                          children: [
                            TileLayer(
                                urlTemplate:
                                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                subdomains: ['a', 'b', 'c']),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        elevation: 10,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Alberto Event',
                              style: GoogleFonts.lato(
                                  color: Colors.grey[700],
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 30),
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  minLines: 1,
                                  maxLines: 1,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: '   Search Events . . . .',
                                    hintStyle: GoogleFonts.lato(
                                        color: Colors.grey[600],
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40.0)),
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40.0)),
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 388.0),
                  child: Container(
                    height: 330,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
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
                                height: 300,
                                width: 280,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                        height: 150,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0)),
                                          child: Image.network(
                                              'https://images.pexels.com/photos/1470165/pexels-photo-1470165.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                              fit: BoxFit.cover),
                                        )),
                                    Positioned(
                                      bottom: 130,
                                      right:
                                          210, //give the values according to your requirement
                                      child: Material(
                                          color: Colors.white,
                                          elevation: 10,
                                          borderRadius:
                                              BorderRadius.circular(100),
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
                                        top: 200,
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
                                        top: 220,
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
                                        top: 240,
                                        left: 25,
                                        child: Text(
                                          'at Sudney, Australia',
                                          style: GoogleFonts.lato(
                                              color: Colors.black54,
                                              fontSize: 13,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.normal),
                                        )),
                                    Positioned(
                                      top: 246,
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
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: CircleAvatar(
                                                        radius: 9,
                                                        backgroundImage:
                                                            NetworkImage(
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
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: CircleAvatar(
                                                        radius: 9,
                                                        backgroundImage:
                                                            NetworkImage(
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
                                                      fontWeight:
                                                          FontWeight.bold),
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
                            left: 0.0, right: 28, top: 14, bottom: 5),
                        child: Material(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                          elevation: 2,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.white),
                                height: 300,
                                width: 280,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                        height: 150,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0)),
                                          child: Image.network(
                                              'https://images.pexels.com/photos/132657/pexels-photo-132657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                              fit: BoxFit.cover),
                                        )),
                                    Positioned(
                                      bottom: 130,
                                      right:
                                          210, //give the values according to your requirement
                                      child: Material(
                                          color: Colors.white,
                                          elevation: 10,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                'https://images.pexels.com/photos/2922142/pexels-photo-2922142.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                                              ),
                                            ),
                                          )),
                                    ),
                                    Positioned(
                                        top: 200,
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
                                        top: 220,
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
                                        top: 240,
                                        left: 25,
                                        child: Text(
                                          'at Sudney, Australia',
                                          style: GoogleFonts.lato(
                                              color: Colors.black54,
                                              fontSize: 13,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.normal),
                                        )),
                                    Positioned(
                                      top: 246,
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
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: CircleAvatar(
                                                        radius: 9,
                                                        backgroundImage:
                                                            NetworkImage(
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
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: CircleAvatar(
                                                        radius: 9,
                                                        backgroundImage:
                                                            NetworkImage(
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
                                                      fontWeight:
                                                          FontWeight.bold),
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
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 34.0, left: 18),
                    child: Icon(Icons.arrow_back_ios, size: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
