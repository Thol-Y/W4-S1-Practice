import 'package:flutter/material.dart';

class ProfileData {
  final String img;
  final String name;
  final String decoration;
  final String phone;
  final String address;

  ProfileData({
    required this.img,
    required this.name,
    required this.decoration,
    required this.phone,
    required this.address,
  });
}

class Profile extends StatelessWidget {
  final ProfileData profileData;

  Profile({required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('CADT Student Profile'),
            Row(
              children: [
                Text(' ${profileData.name}'),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('${profileData.img}'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(profileData: profileData),
            ProfileContact(profileData: profileData),
            ProfileAddress(profileData: profileData),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final ProfileData profileData;

  ProfileHeader({required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset('${profileData.img}'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                profileData.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                profileData.decoration,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileContact extends StatelessWidget {
  final ProfileData profileData;

  ProfileContact({required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                const Text('Phone Number'),
                Text(profileData.phone),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileAddress extends StatelessWidget {
  final ProfileData profileData;

  ProfileAddress({required this.profileData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            const Icon(
              Icons.home,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                const Text('Address'),
                Text(profileData.address),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(
      profileData: ProfileData(
        img: 'images/brother.png',
        name: 'Pen Sithol',
        decoration: 'Software Developer ',
        phone: '096 896 2077',
        address: 'Takeo',
      ),
    ),
  ));
}
