import 'package:flutter/material.dart';
import 'package:flutterportfoliotemplate/components/DescriptionHeading/heading.dart';
import 'package:flutterportfoliotemplate/components/EducationCard/educationCard.dart';
import 'package:google_fonts/google_fonts.dart';

Widget description() {
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
  return Container(
    padding: EdgeInsets.all(64.0),
    color: Colors.black,
    child: ListView(
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
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
          style: GoogleFonts.poppins(
            textStyle: style,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
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
          heading: "Your School",
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
        Wrap(
          spacing: 20,
          children: [
            ProjectCard(cardTextStyleHeading),
            ProjectCard(cardTextStyleHeading),
            ProjectCard(cardTextStyleHeading)
          ],
        )
      ],
    ),
  );
}

class ProjectCard extends StatelessWidget {
  ProjectCard(this.cardStyleHeading);
  final TextStyle cardStyleHeading;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white12,
      child: InkWell(
        splashColor: Colors.pink.withAlpha(30),
        onTap: () {},
        child: SizedBox(
          height: 300,
          width: 250,
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.w3schools.com/howto/img_avatar.png"),
                  ),
                ),
              ),
              Text(
                "Project Name",
                style: GoogleFonts.poppins(textStyle: cardStyleHeading),
              )
            ],
          ),
        ),
      ),
    );
  }
}
