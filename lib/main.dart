import 'package:flutter/material.dart';

void main() => runApp(MiCard(
  name: 'Mohamed Ahmed',
  career: 'SOFTWARE ENGINEER',
  phone: '+201125151177',
  email: 'mohamed.ahmed3343@gmail.com',
  profileImage: 'images/photo.png',

));

class MiCard extends StatelessWidget{
  final name;
  final career;
  final phone;
  final email;
  final profileImage;

  const MiCard({this.name, this.career, this.phone, this.email, this.profileImage});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage(profileImage)
                  ),
                  Text(name,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  Text(career,
                    style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2.5,
                        color: Colors.white
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    child: ListTile(
                        leading:
                        Icon(
                          Icons.add_call,
                          size: 20.0,
                          color: Colors.teal,
                        ),
                        title:
                        Text(phone,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.teal
                          ),)
                    ),
                  ),

                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    child: ListTile(
                        leading:
                        Icon(
                          Icons.email,
                          size: 20.0,
                          color: Colors.teal,
                        ),
                        title:
                        Text(email,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.teal
                          ),)
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
