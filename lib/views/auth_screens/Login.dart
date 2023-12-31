import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_cares_system/WidgetCommon/Button.dart';
import 'package:pet_cares_system/views/auth_screens/LoginScreen.dart';
import 'package:pet_cares_system/views/auth_screens/RegisterScreen.dart';
import '../../WidgetCommon/My_Text_Field.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // add controllers for email and password textfields

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // devide screen using stack widget and add background image in half screen and half white background
        body: Stack(
          children: [
            // add back arrow button here
            const Image(
              image: AssetImage('assets/images/Background.png'),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 10),
              child: IconButton(
                onPressed: () {
                  Get.to(const LoginScreen());
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100, left: 30),
              child: Text(
                'Sign In\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 45,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 265,
                    width: double.infinity,
                    color: Colors.white,
                    child: Expanded(
                      child: Column(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.loose,
                            child: Padding(
                                padding: EdgeInsets.only(
                                    top: 80, left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: Colors.black12,
                                        thickness: 1,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        'Or Continue with',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Divider(
                                        color: Colors.black12,
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          // add  circular button here in Row widget in center of the screen for facebook and google and add only icons in buttons
                          Flexible(
                            flex: 2,
                            fit: FlexFit.loose,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // add facebook button here
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        minimumSize: const Size(60, 60),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.facebook,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  // add google button here
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        minimumSize: const Size(60, 60),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.g_mobiledata,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // add login text here below the buttons
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: InkWell(
                              onTap: () {
                                Get.to(const RegisterScreen());
                              },
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Don\'t have an account? ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Registration',
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(top: 200, left: 30, right: 30),
              child: Form(
                key: _formKey,
                child: Flexible(
                  flex: 3,
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          MyTextFormField(
                              myController: emailController,
                              focusNode: emailFocusNode,
                              onFieldSubmittedValue: (value) {
                                // Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
                              },
                              onValidator: (value) {
                                return value!.isEmpty
                                    ? 'Please enter your email'
                                    : null;
                              },
                              keyBoardType: TextInputType.emailAddress,
                              hintText: 'Email Address',
                              hintStyle:
                                  const TextStyle(color: Colors.blueAccent),
                              labelText: 'Email ',
                              obscureText: false,
                              icon: const Icon(
                                Icons.email,
                                color: Colors.grey,
                              )),
                          const SizedBox(height: 10),
                          MyTextFormField(
                              myController: passwordController,
                              focusNode: passwordFocusNode,
                              onFieldSubmittedValue: (value) {},
                              onValidator: (value) {
                                return value!.isEmpty
                                    ? 'Please enter your password'
                                    : null;
                              },
                              keyBoardType: TextInputType.visiblePassword,
                              labelText: 'Password',
                              hintText: 'Enter your Password',
                              hintStyle:
                                  const TextStyle(color: Colors.blueAccent),
                              obscureText: true,
                              icon: const Icon(
                                Icons.lock,
                                color: Colors.grey,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  // using GetX navigation goto LoginScreen
                                  Get.to(() => const LoginScreen());
                                },
                                child: Text(
                                  'Do not remember the password?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                        fontSize: 16,
                                        // decoration: TextDecoration.underline,
                                        color: Colors.blue[900],
                                      ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          RoundedButton(
                              text: "Sign in ",
                              press: () {
                                Get.to('Dashboard');
                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              height: 70,
                              width: 300),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
