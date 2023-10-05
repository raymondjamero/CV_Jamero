import 'package:flutter/material.dart';
import 'personal_info_screen.dart';
import 'educational_background.dart';
import 'skills.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 5, 5),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculum Vitae',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 33, 33, 34),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/Avatar.jpg',
                ),
                radius: 60.0,
              ),
            ),
            Divider(height: 90, color: Colors.amber),
            Text(
              "Name:",
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
            Text(
              "Raymond P. Jamero",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text(
              "Position:",
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
            Text(
              "IT Technician",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.mail, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "raymondjamero@gmail.com",
                  style: TextStyle(color: Colors.amber),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.call, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "09664123541",
                  style: TextStyle(color: Colors.amber),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.info, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EducationalBackgroundScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.school, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SkillsScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.settings, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
