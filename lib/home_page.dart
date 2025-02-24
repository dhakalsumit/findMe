import 'package:flutter/material.dart';
import 'package:mypf/pages/about_me.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Uri github = Uri.parse("https://github.com/dhakalsumit");
  final Uri linkedin = Uri.parse("https://www.linkedin.com/in/dhakalsumit06/");
  bool showAboutMe = false;

  Future<void> launchgithubUrl() async {
    if (!await launchUrl(github, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $github');
    }
  }

  Future<void> launchlinkedinUrl() async {
    if (!await launchUrl(linkedin, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $linkedin');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("../images/sumitprofile.png"),
                radius: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sumit Dhakal",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Mobile Application Developer",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "The Charles Bukowski “Find what you love, and let it kill you”,",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.deepPurple),
                        shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: () {
                        setState(() {
                          showAboutMe = !showAboutMe; // Toggle visibility
                        });
                      },
                      child: Text("About Me",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.deepPurple),
                        shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: () {},
                      child: Text("Resume",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.deepPurple),
                        shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: () {},
                      child: Text("Contacts",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.deepPurple),
                        shape: WidgetStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: () {},
                      child: Text("My words",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                ],
              ),
              if (showAboutMe) AboutMe(),
              Spacer(),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                    onPressed: () {
                      launchgithubUrl();
                    },
                    child: Text("Github",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                TextButton(
                    onPressed: () {
                      launchlinkedinUrl();
                    },
                    child: Text("LinkedIn",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
