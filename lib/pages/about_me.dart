import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double containerWidth = screenWidth < 400 ? 200 : screenWidth * 0.3;

    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(20),
      width: containerWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(4, 4),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: const Text(
        "Hi, I’m Sumit Dhakal,BSc CSIT student at Mahendra Morang Adarsh Multiple Campus. In addition to my studies, I work as a Flutter developer at PI Innovations Pvt Ltd, where I focus on building user-friendly mobile applications. Flutter has become a particular passion of mine due to its ability to create seamless cross-platform applications. I am excited to contribute to the Flutter community and make a positive impact on the development of mobile applications.",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.deepPurple),
      ),
    );
  }
}
