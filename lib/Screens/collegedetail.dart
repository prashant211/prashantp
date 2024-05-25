import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeDetailsScreen extends StatelessWidget {
  const CollegeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(83.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:
                            const Icon(Icons.arrow_back, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.bookmark_border,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: const Color(0xFF0E3C6E),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 271,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/college.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'GHJK Engineering college',
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Felis consectetur nulla pharetra praesent hendrerit\n vulputate viverra. Pellentesque aliquam tempus faucibus\n est.',
                        style: GoogleFonts.lato(
                          color: const Color(0xff8e8e8e),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 74,
                  width: 52,
                  decoration: BoxDecoration(
                      color: const Color(0xff27c200),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4.3',
                        style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              color: Color(0xffd9d9d9),
              thickness: 1,
            ),
            const Expanded(
              child: DefaultTabController(
                length: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TabBar(
                        tabs: [
                          Tab(text: 'About College'),
                          Tab(text: 'Hostel Facility'),
                          Tab(text: 'Q&A'),
                          Tab(text: 'Events'),
                        ],
                        labelColor: Color(0xFF0E3C6E),
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Color(0xFF0E3C6E),
                      labelStyle: TextStyle(fontSize: 11),
                      ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          AboutCollegeSection(),
                          HostelFacilitySection(),
                          QASection(),
                          EventsSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutCollegeSection extends StatelessWidget {
  const AboutCollegeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Description',
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Neque accumsan, scelerisque eget lectus ullamcorper a\n placerat. Porta cras at pretium varius purus cursus. Morbi \n justo commodo habitant morbi quis pharetra posuere\n mauris. Morbi sit risus, diam amet volutpat quis. Nisl \n pellentesque nec facilisis ultrices.',
                style: GoogleFonts.lato(
                  color: const Color(0xff8e8e8e),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Location',
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: 184,
                width: 365,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/location.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Student Review',
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/profile1.png'),
                  Image.asset('assets/profile1.png'),
                  Image.asset('assets/profile1.png'),
                  Image.asset('assets/profile1.png'),
                  Text(
                    '+12',
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Arun Sai',
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla\n sit magna suscipit tellus malesuada in facilisis a.',
                style: GoogleFonts.lato(
                  color: const Color(0xff8e8e8e),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Icon(
                    Icons.star_half,
                    color: Colors.yellow,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: 376,
                height: 56,
                decoration: BoxDecoration(
                    color: const Color(0xFF0E3C6E),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Apply Now',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
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

class HostelFacilitySection extends StatelessWidget {
  const HostelFacilitySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 31,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF0E3C6E),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/bed.png'),
                    const Text('Bed', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              const SizedBox(width: 10), // Adjust spacing between containers
              Container(
                height: 31,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFF0E3C6E),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/bed.png',
                      color: Colors.black,
                    ),
                    const Text('Bed'),
                  ],
                ),
              ),
              const SizedBox(width: 10), // Adjust spacing between containers
              Container(
                height: 31,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF0E3C6E)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/bed.png',
                      color: Colors.black,
                    ),
                    const Text('Bed'),
                  ],
                ),
              ),
              const SizedBox(width: 10), // Adjust spacing between containers
              Container(
                height: 31,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF0E3C6E)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/bed.png', color: Colors.black),
                    const Text('Bed'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    width: 154,
                    height: 137,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      'assets/hostel.png',
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    width: 154,
                    height: 137,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      'assets/hostel.png',
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    width: 154,
                    height: 137,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      'assets/hostel.png',
                      fit: BoxFit.cover,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left
                :8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'GHJK Engineering Hostel',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Container(
                    width: 52,
                    height: 22,
                    decoration: BoxDecoration(
                        color: const Color(0xff27c200),
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '4.3',
                            style: GoogleFonts.lato(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(width: 3,),
                          const Icon(
                            Icons.star,
                            color: Colors.white,size: 13,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Container(
              width: 376,
              height: 56,
              decoration: BoxDecoration(
                  color: const Color(0xFF0E3C6E),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'Apply Now',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QASection extends StatelessWidget {
  const QASection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Q&A Section',
        style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class EventsSection extends StatelessWidget {
  const EventsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Events Section',
        style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
