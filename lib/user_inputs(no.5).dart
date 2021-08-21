import 'package:flutter/material.dart';
import 'package:hng_stage2_task/display_user_inputs.dart';

String name = 'No name entered';
String age = 'No age entered';
String email = 'None';
String address = 'Unknown';
String gender = 'Unspecified';
String dateOfBirth = 'Unspecified';
String skills = 'None';
String github = 'None';
String phoneNumber = 'None';
String organizations = 'None';
String nationality = 'None';

class UserInputs extends StatefulWidget {
  @override
  _UserInputsState createState() => _UserInputsState();
}

class _UserInputsState extends State<UserInputs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Inputs',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                // fontFamily:
                )),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // For collecting inputs
              Form(
                child: Column(
                  children: [
                    Text('Please fill out form before submitting'),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Full name',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          address = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Address',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Residential Address',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          age = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Age',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Enter Age',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          dateOfBirth = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'dd/mm/yyyy',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Gender',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Male or Female',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          nationality = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Nationality',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Nationality',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'example@gmail.com',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),

                    TextField(
                      onChanged: (value) {
                        setState(() {
                          phoneNumber = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Enter phone number',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          skills = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Github',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Enter github account link',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),

                    TextField(
                      onChanged: (value) {
                        setState(() {
                          skills = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Skills',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Skills and Capabilities',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),

                    TextField(
                      onChanged: (value) {
                        setState(() {
                          organizations = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Organizations',
                        labelStyle: TextStyle(color: Colors.teal, fontSize: 13),
                        hintText: 'Workplace or organizations',
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 13),
                      ),
                    ),

                    SizedBox(height: 50),

                    // Done Button
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DisplayUserInputs()));
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "Done",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
