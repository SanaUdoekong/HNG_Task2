import 'package:flutter/material.dart';
import 'user_inputs(no.5).dart';
import 'package:url_launcher/url_launcher.dart';

class DisplayUserInputs extends StatefulWidget {
  @override
  _DisplayUserInputsState createState() => _DisplayUserInputsState();
}

class _DisplayUserInputsState extends State<DisplayUserInputs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('User Info',
          style: TextStyle(
           color: Colors.white, 
           fontSize: 20, 
           fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      // Profile page
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200, color: Colors.tealAccent, width: double.infinity
                ),
                Positioned(
                  left: 20,
                  top: 130,
                  child: Text(
                    '$name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),
                    
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 160,
                  child: Text(
                    '$address',
                    style: TextStyle(color: Colors.white, fontSize: 16)
                  ),
                  ),
                ],
              ),

              // Heading 1
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Container(height: 22, width: 5, color: Colors.teal),
                title: Text('Personal Info',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            // Age
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Age: $age',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            // Marital Status
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Nationality: $nationality',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            // Gender
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Gender: $gender',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            // Date of birth
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Date of Birth: $dateOfBirth',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            // Social
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Container(height: 22, width: 5, color: Colors.teal),
                title: Text('Social',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            // Email
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Email: $email',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            // Phone Number
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Phone Number: $phoneNumber',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            // Github
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Github: $github',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            // Organisation
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Container(height: 22, width: 5, color: Colors.teal),
                title: Text('Organizations',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            // Organization
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Organizations: $organizations',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            // Skills
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Container(height: 22, width: 5, color: Colors.teal),
                title: Text('Skills',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            
            // Skills
            Positioned(
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Text(
                  'Skills: $skills',
                  style: TextStyle(color: Colors.black54, fontSize: 14)
                ),
              ),
            ),

            SizedBox(height: 50),
            Positioned(
                bottom: 20,
                child: Column(
                  children: [
                    Text('Task created by: ',
                        style: TextStyle(color: Colors.teal, fontSize: 13)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Image.asset('assets/HNGLogo.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextButton(
                        onPressed: () {
                          _launchMap();
                        },
                        child: Text(
                          'https://hng.tech',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height:50),
          ],
        ),
      ),
    );
  }
}

 _launchMap() async {
    final String url = "https://hng.tech";
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw "Couldn't launch URL. Check your internet connection";
    }
  }
