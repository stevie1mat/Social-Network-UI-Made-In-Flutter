import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walkthrough1/profile.dart';

class Connections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                  ),
                  child: Text(
                    'Connections',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700]!,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    top: 3,
                  ),
                  child: Text(
                    '275 Total',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700]!,
                        fontSize: 13,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  minLines: 1,
                  maxLines: 1,
                  autocorrect: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: '   Search Contacts . . . .',
                    hintStyle: GoogleFonts.lato(
                        color: Colors.grey[600]!,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    filled: true,
                    fillColor: Colors.grey[200]!,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]!, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '#Socio',
                          style: GoogleFonts.lato(
                              color: Colors.grey[700]!,
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]!, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '#Trend',
                          style: GoogleFonts.lato(
                              color: Colors.grey[700]!,
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]!, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '#Slack',
                          style: GoogleFonts.lato(
                              color: Colors.grey[700]!,
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]!, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '#Designer',
                          style: GoogleFonts.lato(
                              color: Colors.grey[700]!,
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                top: 30,
              ),
              child: Text(
                'A',
                style: GoogleFonts.lato(
                    color: Colors.grey[700]!,
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                var route = new MaterialPageRoute(
                  builder: (BuildContext context) => new Profile(),
                );

                Navigator.of(context).push(route);
              },
              child: ListTile(
                leading: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(140),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://bloximages.newyork1.vip.townnews.com/roanoke.com/content/tncms/assets/v3/editorial/d/da/ddac1f83-ffae-5e84-a8e5-e71f8ff18119/5f3176da21b5c.image.jpg?crop=650%2C650%2C175%2C0&resize=1200%2C1200&order=crop%2Cresize',
                      ),
                    ),
                  ),
                ),
                title: Text(
                  'Alan Patterson',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700]!,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Software Engineer At Google',
                  style: GoogleFonts.lato(
                      color: Colors.grey[500]!,
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://ggsc.s3.amazonaws.com/images/made/images/uploads/Six_Ways_to_Speak_Up_Against_Bad_Behavior_350_235_s_c1.jpg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Adam Mathew',
                style: GoogleFonts.lato(
                    color: Colors.grey[700]!,
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Life Science Engineer At Microsoft',
                style: GoogleFonts.lato(
                    color: Colors.grey[500]!,
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://i.insider.com/5f46d58ccd2fec00296a46b9?width=1136&format=jpeg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Amaz Benzos',
                style: GoogleFonts.lato(
                    color: Colors.grey[700]!,
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Simple Guy At Amazon',
                style: GoogleFonts.lato(
                    color: Colors.grey[500]!,
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                top: 30,
              ),
              child: Text(
                'B',
                style: GoogleFonts.lato(
                    color: Colors.grey[700]!,
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/11/virat-kohli-1574240907.jpg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Birat Kholi',
                style: GoogleFonts.lato(
                    color: Colors.grey[700]!,
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Leg Square Engineer At Cricket',
                style: GoogleFonts.lato(
                    color: Colors.grey[500]!,
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Bengel Priya',
                style: GoogleFonts.lato(
                    color: Colors.grey[700]!,
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Software Engineer At Google',
                style: GoogleFonts.lato(
                    color: Colors.grey[500]!,
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                top: 30,
              ),
              child: Text(
                'C',
                style: GoogleFonts.lato(
                    color: Colors.grey[700],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://static.scientificamerican.com/sciam/cache/file/92E141F8-36E4-4331-BB2EE42AC8674DD3_source.jpg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Cat Dog',
                style: GoogleFonts.lato(
                    color: Colors.grey[700],
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Meow Engineer At House',
                style: GoogleFonts.lato(
                    color: Colors.grey[500],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
