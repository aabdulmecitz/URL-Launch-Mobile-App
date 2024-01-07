import 'package:flutter/material.dart';
import 'package:flutter_go_to_link/utils/values/Color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Widgets/WidgetBuilder.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  //Idenify URLs
  final Uri instagramUrl = Uri.parse('https://www.instagram.com/_aabdulmecit_/');
  final Uri githubUrl = Uri.parse('https://github.com/aabdulmecitz');
  final Uri facebookUrl = Uri.parse('https://www.facebook.com/aabdulmecit/');
  final Uri xUrl = Uri.parse('https://twitter.com/AbdulmecitAhmet');
  final Uri youtubeUrl = Uri.parse('https://www.youtube.com/@aabdulmecitozkaya');
  final Uri linkedinUrl = Uri.parse('https://www.linkedin.com/in/ahmetabdulmecitozkaya');
  final Uri behanceUrl = Uri.parse('https://www.behance.net/aabdulmecitozkaya');

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colory.midnight2,
      appBar: AppBar(
        backgroundColor: Colory.midnight,
        title: const Center(child: Text('Go To My Link',style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('My Social Media Links', style: TextStyle(fontSize: 20),),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //social button
                MyWidgetBuilder().socialButton(url: instagramUrl, icon: const FaIcon(FontAwesomeIcons.instagram)),
                MyWidgetBuilder().socialButton(url: xUrl, icon: const FaIcon(FontAwesomeIcons.twitter)),
                MyWidgetBuilder().socialButton(url: linkedinUrl, icon: const FaIcon(FontAwesomeIcons.linkedin)),
                MyWidgetBuilder().socialButton(url: githubUrl, icon: const FaIcon(FontAwesomeIcons.github)),
                MyWidgetBuilder().socialButton(url: behanceUrl, icon: const FaIcon(FontAwesomeIcons.behance)),
                MyWidgetBuilder().socialButton(url: youtubeUrl, icon: const FaIcon(FontAwesomeIcons.youtube)),
                MyWidgetBuilder().socialButton(url: facebookUrl, icon: const FaIcon(FontAwesomeIcons.facebook)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
