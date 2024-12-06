import 'package:flutter/material.dart';
import 'package:imdb_clone/const.dart';
import 'package:imdb_clone/widgets/custom_elevated_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isShowMoreClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign In",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Unlock all that IMDb has to offer",
                style: TextStyle(
                  fontSize: 20,
                )),
            SizedBox(
              height: Const.minSize,
            ),
            Container(
              height: 2,
              width: Const.screenSize.width * 0.25,
              color: Color(Const.mainColor),
            ),
            SizedBox(
              height: Const.minSize,
            ),
            const CustomElevatedButton(
              title: "Sign in with IMDb",
              color: Colors.white,
              textColor: Colors.black,
              directory: "assets/imdb_logo.png",
            ),
            SizedBox(
              height: Const.minSize,
            ),
            CustomElevatedButton(
                title: "Sign in with Amazon",
                color: Colors.grey.shade300,
                textColor: Colors.black,
                directory: "assets/amazon_logo.png"),
            SizedBox(
              height: Const.minSize,
            ),
            CustomElevatedButton(
              title: "Sign in with Google",
              color: Colors.blue.shade800,
              textColor: Colors.white,
              directory: "assets/google_logo.png",
              isIconFullFull: true,
            ),
            SizedBox(
              height: Const.minSize,
            ),
            isShowMoreClicked
                ? CustomElevatedButton(
                    title: "Sign in with Google",
                    color: Colors.blue.shade700,
                    textColor: Colors.white,
                    directory: "assets/facebook.png",
                    isIconFullFull: true,
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              overlayColor: Colors.transparent),
                          onPressed: () {
                            setState(() {
                              isShowMoreClicked = !isShowMoreClicked;
                            });
                          },
                          child: Row(
                            children: [
                              Text(
                                "Show more options ",
                                style: TextStyle(
                                  color: Colors.lightBlue[800],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Icon(Icons.keyboard_arrow_down_rounded)
                            ],
                          )),
                    ],
                  ),
            SizedBox(
              height: Const.minSize,
            ),
            const Text("or"),
            SizedBox(
              height: Const.minSize,
            ),
            CustomElevatedButton(
              title: "Create an account",
              color: Color(Const.mainColor),
              textColor: Colors.black,
            ),
            SizedBox(
              height: Const.minSize,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    text: "By signin in, you agree to IMDb's ", // Default style
                    style: const TextStyle(color: Colors.black, fontSize: 11),
                    children: [
                      TextSpan(
                        text: 'Conditions of Use ',
                        style: TextStyle(color: Colors.lightBlue[800]),
                      ),
                      const TextSpan(
                        text: 'and ',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Colors.lightBlue[800]),
                      ),
                      const TextSpan(
                        text: '.',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    style:
                        TextButton.styleFrom(overlayColor: Colors.transparent),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Not now",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
