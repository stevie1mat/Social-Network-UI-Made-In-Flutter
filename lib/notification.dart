import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Notifications',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.grey[700],
                ),
              )
            ]),
            SizedBox(height: 40),
            Center(
              child: Text(
                'Today',
                style: GoogleFonts.lato(
                    color: Colors.grey[600],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(5.0),
                      bottomRight: const Radius.circular(5.0),
                      topLeft: const Radius.circular(5.0),
                      topRight: const Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://content.api.news/v3/images/bin/a6923adbc7bece73803221613f410782',
                        )),
                    title: Text(
                      'Crata Maruti',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'You have missed a call',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          letterSpacing: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          '14:25',
                          style: GoogleFonts.lato(
                              color: Colors.grey[500],
                              letterSpacing: 0.6,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.phone_callback_outlined,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    isThreeLine: false,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(5.0),
                      bottomRight: const Radius.circular(5.0),
                      topLeft: const Radius.circular(5.0),
                      topRight: const Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://i.insider.com/5c9a115d8e436a63e42c2883?width=600&format=jpeg&auto=webp',
                        )),
                    title: Text(
                      'Amaz Benzon',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Has sent You a message',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          letterSpacing: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          '12:43',
                          style: GoogleFonts.lato(
                              color: Colors.grey[500],
                              letterSpacing: 0.6,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.message_rounded,
                          color: Colors.greenAccent,
                        ),
                      ],
                    ),
                    isThreeLine: false,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(5.0),
                      bottomRight: const Radius.circular(5.0),
                      topLeft: const Radius.circular(5.0),
                      topRight: const Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://static.scientificamerican.com/sciam/cache/file/92E141F8-36E4-4331-BB2EE42AC8674DD3_source.jpg',
                        )),
                    title: Text(
                      'Flutter I/O',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'You have an ongoing event',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          letterSpacing: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          '05:40',
                          style: GoogleFonts.lato(
                              color: Colors.grey[500],
                              letterSpacing: 0.6,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.event,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    isThreeLine: false,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                'Yesterday',
                style: GoogleFonts.lato(
                    color: Colors.grey[600],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(5.0),
                      bottomRight: const Radius.circular(5.0),
                      topLeft: const Radius.circular(5.0),
                      topRight: const Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
                        )),
                    title: Text(
                      'Jax Max',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'You have placed a call',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          letterSpacing: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          '01:07',
                          style: GoogleFonts.lato(
                              color: Colors.grey[500],
                              letterSpacing: 0.6,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.phone_forwarded_outlined,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                    isThreeLine: false,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(5.0),
                      bottomRight: const Radius.circular(5.0),
                      topLeft: const Radius.circular(5.0),
                      topRight: const Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/11/virat-kohli-1574240907.jpg',
                        )),
                    title: Text(
                      'Virat Kholi',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'You have sent a message',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          letterSpacing: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          '02:45',
                          style: GoogleFonts.lato(
                              color: Colors.grey[500],
                              letterSpacing: 0.6,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.message_rounded,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    isThreeLine: false,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(5.0),
                      bottomRight: const Radius.circular(5.0),
                      topLeft: const Radius.circular(5.0),
                      topRight: const Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          4, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://static.scientificamerican.com/sciam/cache/file/92E141F8-36E4-4331-BB2EE42AC8674DD3_source.jpg',
                        )),
                    title: Text(
                      'Flutter I/O',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'You attended an event',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          letterSpacing: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          '05:40',
                          style: GoogleFonts.lato(
                              color: Colors.grey[500],
                              letterSpacing: 0.6,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.event,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    isThreeLine: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
