import 'package:flutter/material.dart';
import 'package:imdb_clone/screens/sign_in_page.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  const CustomOutlinedButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignInPage(),
            ));
      },
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(color: Colors.black))),
      child: Text(
        text,
        style: TextStyle(color: Colors.lightBlue[800]),
      ),
    );
  }
}
