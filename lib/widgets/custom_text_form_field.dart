import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.isPassword = false,
  });

  final String? hint;
  final bool isPassword;

  @override
  State<CustomTextFormField> createState() =>
      _CustomTextFieldState();
}

class _CustomTextFieldState
    extends State<CustomTextFormField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: TextFormField(
        obscureText:
            widget.isPassword && !isPasswordVisible,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(
            color: Color(0xff777777),
            fontSize: 18,
            fontFamily: 'Inter',
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(color: Colors.black),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible =
                          !isPasswordVisible;
                    });
                  },
                  icon: Icon(
                    isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
