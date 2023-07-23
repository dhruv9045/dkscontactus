import 'package:dkscontactus/dkscontactus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: true,
    title: 'Contact-us',
    home: ContactUsPage(),
  ));
}

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: DksContactUs(
          dialogTextStyle: TextStyle(color: Colors.black),
          isCircularIcon: true,
          email: 'dksdev.com@gmail.com',
          emailText: 'Send email',
          websiteText: 'Dks Dev.',
          website: 'https://www.dksdev.com',
          textStyle: TextStyle(color: Colors.white),
          cardColor: Colors.black,
        ),
      )),
    );
  }
}
