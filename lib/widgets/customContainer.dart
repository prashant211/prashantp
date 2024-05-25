import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String smallText;

  const CustomContainer({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: 355,
      height: 158,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // You can add additional decoration properties here if needed
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              imagePath,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // Gradient Overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent,
                    ],
                    stops: [0.0, 0.7],
                  ),
                ),
              ),
            ),
            // Column with two texts
            Positioned(
              top: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            // Small text at the bottom right
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 120, // Adjust the width according to your preference
                height: 40, // Adjust the height according to your preference
                color: Colors.white,
                child: Center(
                  child: Text(
                    smallText,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
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
