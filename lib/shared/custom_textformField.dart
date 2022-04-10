import 'package:flutter/material.dart';
import 'package:liquor_ordering_system/shared/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType inputType;
  final FocusNode focusNode;
  final bool isObscureText;
  final TextInputAction textAction;
  final FormFieldValidator<String> validation;
  final VoidCallback onTap;
  final GestureDetector? prefixIcon;
  final GestureDetector? suffixIcon;
  final String labelText;
  final String hintText;
  final bool isReadOnly;
  final TextEditingController controller;
  const CustomTextFormField({
    Key? key,
    required this.inputType,
    required this.focusNode,
    required this.isObscureText,
    required this.textAction,
    required this.validation,
    required this.onTap,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.labelText,
    required this.hintText,
    required this.isReadOnly,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      focusNode: focusNode,
      obscureText: isObscureText,
      validator: validation,
      readOnly: isReadOnly,
      textInputAction: textAction,
      onTap: onTap,
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: prefixIcon,
        labelText: labelText,
        hintText: hintText,
        suffixIcon: focusNode.hasFocus ? suffixIcon : const Text(''),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: customColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: Colors.white70,
      ),
    );
  }
}
