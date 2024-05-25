import 'package:college/Screens/collegedetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/collegecontainer.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

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
              shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>const  CollegeDetailsScreen()
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0,right: 18,left: 18,bottom: 10),
                  child: CollegeContainer(),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
