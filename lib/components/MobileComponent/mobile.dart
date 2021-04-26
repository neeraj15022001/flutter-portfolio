import 'package:flutter/material.dart';
import 'package:flutterportfoliotemplate/components/DescriptionHeading/heading.dart';
import 'package:flutterportfoliotemplate/components/EducationCard/educationCard.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mobile() {
  final TextStyle style = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  final TextStyle cardTextStyleHeading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  final TextStyle cardTextStyleDescription = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  final TextStyle cardTextStyleYear = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.pink,
  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        splashColor: Colors.pink.withAlpha(20),
        child: Icon(
          Icons.info,
        ),
        onPressed: () {},
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 900,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Heading(
                      "About",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                      style: GoogleFonts.poppins(
                        textStyle: style,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ",
                      style: GoogleFonts.poppins(
                        textStyle: style,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ",
                      style: GoogleFonts.poppins(
                        textStyle: style,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Heading("Education"),
                    SizedBox(
                      height: 30,
                    ),
                    EducationCard(
                      cardTextStyleHeading: cardTextStyleHeading,
                      cardTextStyleDescription: cardTextStyleDescription,
                      cardTextStyleYear: cardTextStyleYear,
                      heading: "Your University",
                      description: "Current CGPA : ",
                      year: "Year",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    EducationCard(
                      cardTextStyleHeading: cardTextStyleHeading,
                      cardTextStyleDescription: cardTextStyleDescription,
                      cardTextStyleYear: cardTextStyleYear,
                      heading: "Your High School",
                      description: "CGPA : ",
                      year: "Year",
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Heading("Projects"),
                    SizedBox(
                      height: 40,
                    ),
                    ProjectCardMobile(),
                    SizedBox(
                      height: 20,
                    ),
                    ProjectCardMobile(),
                    SizedBox(
                      height: 20,
                    ),
                    ProjectCardMobile()
                    // Wrap(
                    //   direction: Axis.vertical,
                    //   spacing: 20,
                    //   children: [
                    //     ProjectCardMobile(cardTextStyleHeading),
                    //     ProjectCardMobile(cardTextStyleHeading),
                    //     ProjectCardMobile(cardTextStyleHeading)
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class ProjectCardMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      child: InkWell(
        splashColor: Colors.pink.withAlpha(30),
        onTap: () {},
        child: SizedBox(
          // width: 300,
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.w3schools.com/howto/img_avatar.png"),
                  ),
                ),
              ),
              Text(
                'A card that can be tapped',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
