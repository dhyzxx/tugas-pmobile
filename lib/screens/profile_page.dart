import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://gcdnb.pbrd.co/images/b0qF3cEYlyca.jpg'),
          ),
          const Text(
                'Adhy Kuncoro Jati Taruna Pratama',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico', 
                ),
              ),
          const Text(
                'Networking Engginering Student',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro', 
                ),
              ),
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                child: Text(
                  'Seorang mahasiswa informatika yang gemar mengeksplorasi teknologi mobile development dan desain antarmuka pengguna.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.teal.shade50,
                    fontStyle: FontStyle.italic,
                    height: 1.5, 
                  ),
                ),
              ),

          const SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal,
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '+62 812-3456-7890',
                style: TextStyle(
                  color: Colors.teal,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'adhykon@gmail.com',
                style: TextStyle(
                  color: Colors.teal,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}