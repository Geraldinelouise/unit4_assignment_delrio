import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 226, 151, 239),
          title: const Text(
            'Geraldine\'s Assignment 4',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileSection(),
              SizedBox(height: 20),
              IconSectionRow(),
              SizedBox(height: 20),
              BiographySection(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/image/pfp.jpg'),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello, my name is',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 42, 38, 38),
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Geraldine Louise M. Del Rio',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Color.fromARGB(255, 226, 151, 239),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class IconSectionRow extends StatelessWidget {
  const IconSectionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildColoredBox(
            color: Color.fromARGB(255, 226, 151, 239),
            child: buildIconSection(
              Icons.email,
              'Email:',
              'geraldine.delrio@wvsu.edu.ph',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildColoredBox(
            color: Color.fromARGB(255, 237, 140, 226),
            child: buildIconSection(
              Icons.phone,
              'Phone:',
              '+09086504117',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildColoredBox(
            color: Color.fromARGB(255, 226, 151, 239),
            child: buildIconSection(
              Icons.location_on,
              'Location:',
              'Trapiche Oton Iloilo',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildColoredBox(
            color: Color.fromARGB(255, 237, 140, 226),
            child: buildIconSection(
              Icons.cake,
              'Birthday:',
              'May 2, 2002',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildColoredBox(
            color: Color.fromARGB(255, 226, 151, 239),
            child: buildIconSection(
              Icons.favorite,
              'Hobbies:',
              'Reading, Drawing, Music, Gaming, Cooking, Travelling',
            ),
          ),
        ),
      ],
    );
  }

  Widget buildIconSection(IconData icon, String label, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 40, color: const Color.fromARGB(255, 255, 255, 255)),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Text(
            label,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 42, 38, 38),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 42, 38, 38),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildColoredBox({required Color color, required Widget child}) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: child,
  );
}

class BiographySection extends StatelessWidget {
  const BiographySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'My Biography,',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 226, 151, 239),
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'I was born on May 2, 2002, and I am a passionate and creative individual who enjoys exploring various artistic pursuits. With a love for reading and drawing, '
                'I find joy in expressing myself through literature and art. In my free time, I immerse myself in music and gaming, discovering new worlds and experiences. '
                'My culinary skills shine as I enjoy cooking, and I embrace the thrill of adventure through my passion for traveling.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Roboto',
                  color: Color.fromARGB(255, 42, 38, 38),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
