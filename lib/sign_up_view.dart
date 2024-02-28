import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'helper/color_constant.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var _rememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(
              flip: true,
            ),
            child: Container(
              color: ColorConstant.lightOrange,
              height: kToolbarHeight * 2,
            ),
          ),
          const Text(
            'Lorem Ipsum',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Name",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "E-mail",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberPassword,
                        onChanged: (value) {
                          _rememberPassword = !_rememberPassword;
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Remember'),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Lorem Ipsum?',
                        style: TextStyle(
                          color: ColorConstant.darkPurple,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: ColorConstant.darkPurple),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            ColorConstant.darkPurple)),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Text('Lorem ipsum dolor sit amet?'),
                      Text(
                        'New Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.darkPurple,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
