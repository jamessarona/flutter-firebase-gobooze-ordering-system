import 'package:flutter/material.dart';
import 'package:liquor_ordering_system/shared/constants.dart';
import 'package:liquor_ordering_system/shared/custom_appbar.dart';
import 'package:liquor_ordering_system/shared/custom_button.dart';
import 'package:liquor_ordering_system/shared/custom_container.dart';
import 'package:liquor_ordering_system/shared/custom_logo_slogan.dart';
import 'package:liquor_ordering_system/shared/custom_textformField.dart';
import 'package:liquor_ordering_system/shared/scroll_behavior.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late Size screenSize;

  FocusNode usernameNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  FocusNode contactNode = FocusNode();
  TextEditingController usernameText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  TextEditingController contactText = TextEditingController();
  final GlobalKey<FormState> _signupFormKey = GlobalKey<FormState>();
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const TransparentAppbar(
          hasLeadingIcon: true,
        ),
        body: Container(
          width: screenSize.width,
          color: Colors.white,
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView(
              children: [
                const LogoAndSlogan(
                  height: 200,
                  width: 300,
                  subtitle: 'Create your account',
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    left: screenSize.width / 10,
                    right: screenSize.width / 10,
                  ),
                  child: CustomTextFormField(
                    inputType: TextInputType.text,
                    focusNode: usernameNode,
                    isObscureText: false,
                    textAction: TextInputAction.next,
                    validation: (value) {
                      if (value == '') {
                        return 'Enter your username';
                      }
                      return null;
                    },
                    onTap: () {},
                    prefixIcon: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.person_outline,
                        size: 25,
                      ),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          usernameText.clear();
                        });
                      },
                      child: const Icon(
                        Icons.close,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    labelText: 'Username',
                    hintText: '',
                    isReadOnly: false,
                    controller: usernameText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: screenSize.width / 10,
                    right: screenSize.width / 10,
                  ),
                  child: CustomTextFormField(
                    inputType: TextInputType.phone,
                    focusNode: contactNode,
                    isObscureText: false,
                    textAction: TextInputAction.next,
                    validation: (value) {
                      if (value == '') {
                        return 'Enter your contact number';
                      }
                      return null;
                    },
                    onTap: () {},
                    prefixIcon: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.phone_enabled_outlined,
                        size: 25,
                      ),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          contactText.clear();
                        });
                      },
                      child: const Icon(
                        Icons.close,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    labelText: 'Contact',
                    hintText: '',
                    isReadOnly: false,
                    controller: contactText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: screenSize.width / 10,
                    right: screenSize.width / 10,
                  ),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: CustomTextFormField(
                    inputType: TextInputType.visiblePassword,
                    focusNode: passwordNode,
                    isObscureText: isPasswordObscure,
                    textAction: TextInputAction.go,
                    validation: (value) {
                      if (value == '') {
                        return 'Enter your password';
                      }
                      return null;
                    },
                    onTap: () {},
                    prefixIcon: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.lock_outline,
                        size: 20,
                      ),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPasswordObscure = !isPasswordObscure;
                        });
                      },
                      child: isPasswordObscure
                          ? const Icon(
                              Icons.visibility_outlined,
                              size: 20,
                              color: Colors.grey,
                            )
                          : const Icon(
                              Icons.visibility_off_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                    ),
                    labelText: 'Password',
                    hintText: '',
                    isReadOnly: false,
                    controller: passwordText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 40,
                    left: screenSize.width / 3,
                    right: screenSize.width / 3,
                  ),
                  child: CustomRaisedButton(
                      elavation: 5,
                      color: customColor,
                      radius: 20,
                      onPressed: () {
                        setState(() {
                          _signupFormKey.currentState?.validate();
                        });
                      },
                      isLoading: false,
                      text: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
                const Text(
                  '--------------- Or sign up with ---------------',
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSignInSignUpOption(
                        icon: 'google',
                        action: () {},
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomSignInSignUpOption(
                        icon: 'facebook',
                        action: () {},
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomSignInSignUpOption(
                        icon: 'twitter',
                        action: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
