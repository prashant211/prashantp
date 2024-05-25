import 'package:flutter/material.dart';
import 'package:college/widgets/customContainer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  // List of data for CustomContainer
  final List<Map<String, dynamic>> containerData = [
    {
      'imagePath': 'assets/img1.jpg',
      'title': 'Top Colleges',
      'text':
          'Search through thousands of \n accredited colleges and universities \n online to find the right one for you. \n Apply in 3 min, and connect with your \n  future.',
      'smallText': '+126 Colleges',
    },
    {
      'imagePath': 'assets/img2.jpg',
      'title': 'Top Schools',
      'text':
          'Searching for the best school for you \n just got easier! With our Advanced \n School Search, you can easily filter out \n the schools that are fit for you.',
      'smallText': '+106 Schools',
    },
    {
      'imagePath': 'assets/img3.jpg',
      'title': 'Exams',
      'text':
          'Find an end to end information about \n the exams that are happening in India',
      'smallText': '+16 Exams',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 428,
            height: 225,
            decoration: const BoxDecoration(
              color: Color(0xFF0E3C6E),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Find your own way',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Search in 600 colleges around!',
                  style: GoogleFonts.lato(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 279,
                      height: 53,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xffD6D6D6),
                          ),
                          hintText: 'Search for colleges,schools...',
                          hintStyle: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffD6D6D6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 53,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.mic,
                        color: Color(0xFF0E3C6E),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: containerData.length,
              itemBuilder: (context, index) {
                final data = containerData[index];
                return GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CustomContainer(
                      imagePath: data['imagePath'],
                      title: data['title'],
                      subtitle: data['text'],
                      smallText: data['smallText'], // Change if needed
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  int selectedIndex = -1; // Default value

  // Define list of icons and titles
  List<String> imagePaths = [
    'assets/education.png',
    'assets/sketch.png',
    'assets/pharmacy.png',
    'assets/balance.png',
    'assets/management.png',
  ];

  List<String> titles = [
    'Bachelor of Technology',
    'Bachelor of Architecture',
    'Pharmacy',
    'Law',
    'Management',
  ];

  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: 396,
            width: 428,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30, top: 30, bottom: 20),
                      child: Text(
                        'Sort By',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30, top: 30, bottom: 20),
                        child: Image.asset(
                          'assets/cross.png',
                          width: 16,
                          height: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0, right: 18),
                  child: Divider(
                    color: Color(0xffb9b9b9),
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 284, // Adjust as needed
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                          Navigator.pop(context); // Close bottom sheet
                          // Navigate to next screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen()
                              ),
                          );
                        },
                        leading: Image.asset(imagePaths[index],width: 20,height: 20,),
                        title: Text(
                          titles[index],
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        trailing: selectedIndex == index
                            ? Container(
                                width: 24,
                                height: 24,
                                child: const Stack(
                                  children: [
                                    Icon(
                                      Icons.circle_outlined,
                                      color: Color(0xFF0E3C6E),
                                      size: 24,
                                    ),
                                    Positioned(
                                      top: 4,
                                      left: 4,
                                      child: Icon(Icons.circle,
                                          color: Color(0xFF0E3C6E), size: 16),
                                    ),
                                  ],
                                ),
                              )
                            : const Icon(
                                Icons.circle_outlined,
                                size: 21,
                              ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
