
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController email = TextEditingController();
  TextEditingController passwords = TextEditingController();
  bool emailIcon = false;
  bool passwordIcon = false;
  bool eye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.black,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/images/Group 320.png'),
              width: 50,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 280,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade800,
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 145,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade700,
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Email address',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            const SizedBox(
              height: 10,
            ),

            /// Text fild
            TextField(
              controller: email,
              onChanged: (value) {
                if (value.characters.isNotEmpty) {
                  emailIcon = true;
                } else {
                  emailIcon = false;
                }
                setState(() {});
              },
              autofocus: false,
              textInputAction: TextInputAction.newline,
              style: const TextStyle(fontSize: 24, color: Colors.grey),
              decoration: InputDecoration(
                hintText: " You@example.come",
                hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 20),
                suffixIcon: GestureDetector(
                  onTap: () {
                    email.clear();
                  },
                  child: Icon(
                    CupertinoIcons.xmark_circle_fill,
                    weight: 24,
                    color:
                    emailIcon ? Colors.grey.shade600 : Colors.transparent,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey.shade800,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Password',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),

            /// Text fild
            TextField(
              controller: passwords,
              onChanged: (password) {
                if (password.characters.isNotEmpty) {
                  passwordIcon = true;
                } else {
                  passwordIcon = false;
                }
                setState(() {});
              },
              autofocus: true,
              obscureText: eye,
              // keyboardType: TextInputType.number,
              obscuringCharacter: '*',
              textInputAction: TextInputAction.newline,
              style: const TextStyle(fontSize: 25, color: Colors.grey),
              decoration: InputDecoration(
                hintText: " Your password",
                hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 20),
                suffixIcon: SizedBox(
                  height: 10,
                  width: 75,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          passwords.clear();


                        },
                        child: Icon(
                          CupertinoIcons.xmark_circle_fill,
                          weight: 25,
                          color: passwordIcon
                              ? Colors.grey.shade600
                              : Colors.transparent,
                          size: 22,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          if(eye){
                            eye=false;
                          }else{
                            eye=true;
                          }
                          setState(() {

                          });
                        },


                        child: Icon(
                          CupertinoIcons.eye_fill,
                          weight: 25,
                          color: passwordIcon
                              ? Colors.grey.shade600
                              : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                filled: true,
                fillColor: Colors.grey.shade800,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepPurple,
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.deepPurple.shade400,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 170,
            ),
            const Center(
                child: Text(
                  "Sign in with",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                )),

            const SizedBox(
              height: 15,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade800),
                  child: const Icon(
                    Icons.apple,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade800),
                  child: const Icon(
                    Icons.facebook,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade800,
                    image: const DecorationImage(image:AssetImage('assets/images/Vector.png')),
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
