import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeContainer extends StatelessWidget {
  const CollegeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(37),
      child: Container(
        height: 243,
        width: 354,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(37),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(37),
                    topRight: Radius.circular(37),
                  ),
                  child: Image.asset(
                    'assets/college.jpg',
                    height: 116,
                    width: 376,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 265),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.bookmark_border,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'GHJK Engineering college',
                    style: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14.0),
                  child: Container(
                    height: 22,
                    width: 52,
                    decoration: BoxDecoration(
                        color: const Color(0xFF27c200),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4.3',
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                        const Icon(Icons.star, color: Colors.white, size: 14,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Eu ut imperdiet sed nec ullamcorper.',
                    style: GoogleFonts.lato(
                        fontSize: 9, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    height: 21.58,
                    width: 77.48,
                    decoration: BoxDecoration(
                        color: const Color(0xFF0E3C6E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Apply Now',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Divider(
                color: Color(0xffb9b9b9),
                thickness: 1,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Image.asset(
                    'assets/like.png',
                    width: 26,
                    height: 26,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'More than 1000+ students have been placed',
                  style: GoogleFonts.lato(
                      color: const Color(0xFF8e8e8e),
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 40,
                ),
                const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xffA9A9A9),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '468+',
                  style: GoogleFonts.lato(
                      color: const Color(0xffA9A9A9),
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
